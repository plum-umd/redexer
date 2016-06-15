import os
import re
import sys
import time
import xml.etree.ElementTree as ET

def execute_all(cmd_list):
    for cmd in cmd_list:
        os.system("adb shell log \"System > 0 " + sys.argv[2] + ".systemIntent(" + cmd + ")\n\"")
        os.system("adb shell am broadcast -a " + cmd + " --el \"umd_Intent_key\" " + str(int(round(time.time()*1000000))))
#time.sleep(1)

action_dict = dict()
#action_dict["BOOT_COMPLETED"] = ["android.intent.action.BOOT_COMPLETED"]
action_dict["BOOT_COMPLETED"] = [] # leave this blank because it will restart the device everytime otherwise
action_dict["ACTION_SHUTDOWN"] = ["android.intent.action.ACTION_SHUTDOWN"]
action_dict["USER_PRESENT"] = ["android.intent.action.USER_PRESENT"]
action_dict["ACTION_POWER_CONNECTED"] = ["android.intent.action.ACTION_POWER_CONNECTED"]
action_dict["ACTION_POWER_DISCONNECTED"] = ["android.intent.action.ACTION_POWER_DISCONNECTED"]
action_dict["BATTERY_LOW"] = ["android.intent.action.BATTERY_LOW"]
action_dict["PACKAGE_ADDED"] = ["android.intent.action.PACKAGE_ADDED --ei \"android.intent.extra.UID\" 1111111 -ez 0"]
action_dict["PACKAGE_REMOVED"] = ["android.intent.action.PACKAGE_REMOVED --ei \"android.intent.extra.UID\" 1111111 --ez \"android.intent.extra.DATA_REMOVED\" false --ez \"android.intent.extra.REPLACING\" false"]
action_dict["PACKAGE_REPLACED"] = ["android.intent.action.PACKAGE_REPLACED --ei \"android.intent.extra.UID\" 1111111"]
action_dict["TIME_SET"] = ["android.intent.action.TIME_SET"]
action_dict["TIMEZONE_CHANGED"] = ["android.intent.action.TIMEZONE_CHANGED --es time-zone \"GMT-08:00\"", "android.intent.action.TIMEZONE_CHANGED --es time-zone \"GMT-10:00\""]
action_dict["LOCALE_CHANGED"] = ["android.intent.action.LOCALE_CHANGED"]
action_dict["PROVIDER_CHANGED"] = ["android.intent.action.PROVIDER_CHANGED --ez count true -d \"content://com.google.android.gm/labels\""]
action_dict["MEDIA_BUTTON"] = ["android.intent.action.MEDIA_BUTTON --es \"android.intent.extra.KEY_EVENT\" \"http://google.com\""]
action_dict["MY_PACKAGE_REPLACED"] = ["android.intent.action.MY_PACKAGE_REPLACED " + sys.argv[2]]



manifest_tree = ET.parse(sys.argv[1])
root = manifest_tree.getroot()
matches = []
for app in root.findall('application'):
    for receiver in app.findall('receiver'):
        intent_filter = receiver.find('intent-filter')
        if intent_filter is not None:
            for action in intent_filter.findall('action'):
                action_str = action.attrib[action.attrib.keys()[0]]
                if "android.intent.action" in action_str:
                    matches.append(action_str.split("android.intent.action.")[1])

unhandled_actions = []

for action in matches:
    if action in action_dict:
        print action
        execute_all(action_dict[action])
        time.sleep(5)
    else:
        unhandled_actions.append(action)

if unhandled_actions:
    print("These actions were not handled:")
    for action in unhandled_actions:
        print action


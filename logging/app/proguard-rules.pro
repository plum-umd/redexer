# I want to keep everything but com.google.protobuf... So I keep the head of the other two packages.
# Luckily, what I'm building is small
-keep class org.** { *; }
-keep class ProtoDefs.** { *; }
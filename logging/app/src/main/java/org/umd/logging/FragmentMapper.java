package org.umd.logging;

import java.util.HashMap;

import android.util.Log;
public class FragmentMapper {

  private static HashMap<String, Boolean> check_map;
  private static FragmentMapper instance = null;
  private FragmentMapper() {
    // Exists only to defeat instantiation.
  }
  public static FragmentMapper getInstance() {
    if(instance == null) {
      check_map = new HashMap();
      instance = new FragmentMapper();
    }
    return instance;
  }

  public static Boolean isFragment(Class clazz){
    if(clazz == null){
      return false;
    }
    String classString = clazz.getName();
    // Log.i("WTF?", classString);
    Boolean m = check_map.get(classString);
    if(m != null){
      return m;
    }else if(classString.equals("android.app.Fragment") ||
             classString.equals("android.support.v4.app.Fragment")){
      check_map.put(classString, true);
      return true;
    }else{
      Class super_class = clazz.getSuperclass();
      if(super_class == null) {
        check_map.put(classString, false);
        return false;
      }else{
        Boolean b = isFragment(super_class);
        check_map.put(classString, b);
        return b;
      }
    }
  }

}
package org.umd.logging;

import java.util.HashMap;

import android.util.Log;
import java.util.ArrayList;
import java.lang.Thread;

import java.io.File;
import java.io.FileWriter;
import java.io.BufferedWriter;
import java.io.FileDescriptor;
import java.io.IOException;
import android.os.Environment;

public class FileWriterHandler implements Runnable{
    private ArrayList<String> pipe;
    private BufferedWriter out;
    final static String tag = Logger.class.getPackage().getName();
    public FileWriterHandler(ArrayList<String> p){
        pipe = p;
        try{
            File root = Environment.getExternalStorageDirectory();
            Log.i(tag, root.getAbsolutePath() +"/" + root.getName());
            File  LogFile = new File(root, "Log.txt");
            FileWriter LogWriter = new FileWriter(LogFile, true);
            out = new BufferedWriter(LogWriter, 65536);
        }catch(IOException e){
                Log.i(tag, "logging error");
                e.printStackTrace();
        }
    }
    public void run() {
        while(true){
            // Block background thread and wait for data to process.
            while(!pipe.isEmpty()){
                try{
                    out.write(pipe.get(0) + "\n");
                }catch(IOException e){
                    Log.i(tag, "logging error");
                    e.printStackTrace();
                }
                pipe.remove(0);
            }
        }
    }
    
    
  }

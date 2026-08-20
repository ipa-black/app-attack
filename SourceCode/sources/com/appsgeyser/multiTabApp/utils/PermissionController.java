package com.appsgeyser.multiTabApp.utils;

import android.util.Log;
import androidx.core.app.ActivityCompat;
import com.appsgeyser.multiTabApp.Factory;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2.dex */
public class PermissionController {
    private static PermissionController permissionController;
    private boolean isLaunch;
    private final ArrayList<HashMap<String[], Integer>> queue = new ArrayList<>();

    public static synchronized PermissionController getInstance() {
        PermissionController permissionController2;
        synchronized (PermissionController.class) {
            if (permissionController == null) {
                permissionController = new PermissionController();
            }
            permissionController2 = permissionController;
        }
        return permissionController2;
    }

    public void addPermissions(String[] strArr, Integer num) {
        HashMap<String[], Integer> hashMap = new HashMap<>(1);
        hashMap.put(strArr, num);
        if (!this.isLaunch) {
            ActivityCompat.requestPermissions(Factory.getInstance().getMainNavigationActivity(), strArr, num.intValue());
            Log.i("permissionsPair!", "request");
            this.isLaunch = true;
            return;
        }
        this.queue.add(hashMap);
    }

    public void releaseSem() {
        this.isLaunch = false;
        if (this.queue.isEmpty()) {
            ArrayList<HashMap<String[], Integer>> arrayList = this.queue;
            for (Map.Entry<String[], Integer> entry : arrayList.get(arrayList.size()).entrySet()) {
                addPermissions(entry.getKey(), entry.getValue());
            }
        }
    }
}

package com.appsgeyser.multiTabApp.utils;

import android.app.Activity;
import android.location.Location;
import android.location.LocationManager;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.List;
/* loaded from: classes2.dex */
public class Geolocation {
    public static double[] getCoords(Activity activity) {
        Location location = getLocation(activity);
        double[] dArr = new double[2];
        if (location != null) {
            dArr[0] = location.getLatitude();
            dArr[1] = location.getLongitude();
        }
        return dArr;
    }

    public static Location getLocation(Activity activity) {
        try {
            LocationManager locationManager = (LocationManager) activity.getSystemService(FirebaseAnalytics.Param.LOCATION);
            List<String> providers = locationManager.getProviders(true);
            Location location = null;
            for (int size = providers.size() - 1; size >= 0; size--) {
                location = locationManager.getLastKnownLocation(providers.get(size));
                if (location != null) {
                    break;
                }
            }
            return location;
        } catch (Exception unused) {
            return null;
        }
    }
}

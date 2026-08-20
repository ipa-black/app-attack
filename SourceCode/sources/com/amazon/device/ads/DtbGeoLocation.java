package com.amazon.device.ads;

import android.content.Context;
import android.location.Location;
import android.location.LocationManager;
import com.google.firebase.analytics.FirebaseAnalytics;
/* loaded from: classes.dex */
class DtbGeoLocation {
    private static final String LOG_TAG = "DtbGeoLocation";
    private static final float THRESHOLD_DISTANCE_IN_KILOMETERS = 3.0f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public DtbGeoLocation() {
        if (AdRegistration.getContext() != null) {
            return;
        }
        DtbLog.debugError("unable to initialize DtbGeoLocation without setting app context");
        throw new IllegalArgumentException("unable to initialize DtbGeoLocation without setting app context");
    }

    public String getLocationParam() {
        Location location = getLocation();
        if (location == null) {
            return null;
        }
        long currentTimeMillis = (System.currentTimeMillis() - location.getTime()) / 1000;
        if (currentTimeMillis > 86400) {
            return null;
        }
        return location.getLatitude() + "," + location.getLongitude() + "," + location.getAccuracy() + "," + currentTimeMillis;
    }

    Location getLocation() {
        Context context = AdRegistration.getContext();
        if (hasLocationPermission(context)) {
            Location lastLocation = getLastLocation(context, "gps");
            Location lastLocation2 = getLastLocation(context, "network");
            if (lastLocation == null || lastLocation2 == null) {
                if (lastLocation != null) {
                    DtbLog.debug("Setting location using gps, network not available");
                    return lastLocation;
                } else if (lastLocation2 != null) {
                    DtbLog.debug("Setting location using network, gps not available");
                    return lastLocation2;
                } else {
                    return null;
                }
            }
            if (lastLocation.distanceTo(lastLocation2) / 1000.0f <= 3.0f) {
                if ((lastLocation.hasAccuracy() ? lastLocation.getAccuracy() : Float.MAX_VALUE) < (lastLocation2.hasAccuracy() ? lastLocation2.getAccuracy() : Float.MAX_VALUE)) {
                    DtbLog.debug("Setting location using GPS determined by accuracy");
                } else {
                    DtbLog.debug("Setting location using network determined by accuracy");
                    lastLocation = lastLocation2;
                }
            } else if (lastLocation.getTime() > lastLocation2.getTime()) {
                DtbLog.debug("Setting location using GPS determined by time");
            } else {
                DtbLog.debug("Setting location using network determined by time");
                return lastLocation2;
            }
            return lastLocation;
        }
        return null;
    }

    Location getLastLocation(Context context, String str) {
        LocationManager locationManager = (LocationManager) context.getSystemService(FirebaseAnalytics.Param.LOCATION);
        if (locationManager != null) {
            try {
                return locationManager.getLastKnownLocation(str);
            } catch (IllegalArgumentException unused) {
                DtbLog.warn("Failed to retrieve location: " + str + "not found");
                return null;
            } catch (SecurityException unused2) {
                DtbLog.warn("Failed to retrieve location: No permissions to access " + str);
                return null;
            }
        }
        return null;
    }

    private boolean hasLocationPermission(Context context) {
        return context.checkCallingOrSelfPermission("android.permission.ACCESS_FINE_LOCATION") == 0 || context.checkCallingOrSelfPermission("android.permission.ACCESS_COARSE_LOCATION") == 0;
    }
}

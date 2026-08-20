package com.yandex.metrica.gpllibrary;

import android.location.Location;
import android.location.LocationListener;
import com.google.android.gms.tasks.OnSuccessListener;
/* loaded from: classes3.dex */
class GplOnSuccessListener implements OnSuccessListener<Location> {
    private final LocationListener mLocationListener;

    /* JADX INFO: Access modifiers changed from: package-private */
    public GplOnSuccessListener(LocationListener locationListener) {
        this.mLocationListener = locationListener;
    }

    @Override // com.google.android.gms.tasks.OnSuccessListener
    public void onSuccess(Location location) {
        this.mLocationListener.onLocationChanged(location);
    }
}

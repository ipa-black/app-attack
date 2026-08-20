package com.yandex.metrica.gpllibrary;

import android.content.Context;
import android.location.LocationListener;
import android.os.Looper;
import android.util.Log;
import com.google.android.gms.location.FusedLocationProviderClient;
import com.google.android.gms.location.LocationCallback;
import com.google.android.gms.location.LocationRequest;
import java.util.concurrent.Executor;
/* loaded from: classes3.dex */
public class a implements com.yandex.metrica.gpllibrary.b {

    /* renamed from: a  reason: collision with root package name */
    private final FusedLocationProviderClient f12548a;

    /* renamed from: b  reason: collision with root package name */
    private final LocationListener f12549b;

    /* renamed from: c  reason: collision with root package name */
    private final LocationCallback f12550c;

    /* renamed from: d  reason: collision with root package name */
    private final Looper f12551d;

    /* renamed from: e  reason: collision with root package name */
    private final Executor f12552e;

    /* renamed from: f  reason: collision with root package name */
    private final long f12553f;

    /* renamed from: com.yandex.metrica.gpllibrary.a$a  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    static class C0345a {

        /* renamed from: a  reason: collision with root package name */
        private final Context f12554a;

        C0345a(Context context) {
            this.f12554a = context;
        }

        FusedLocationProviderClient a() throws Throwable {
            return new FusedLocationProviderClient(this.f12554a);
        }
    }

    /* loaded from: classes3.dex */
    public enum b {
        PRIORITY_NO_POWER,
        PRIORITY_LOW_POWER,
        PRIORITY_BALANCED_POWER_ACCURACY,
        PRIORITY_HIGH_ACCURACY
    }

    public a(Context context, LocationListener locationListener, Looper looper, Executor executor, long j) throws Throwable {
        this(new C0345a(context), locationListener, looper, executor, j);
    }

    @Override // com.yandex.metrica.gpllibrary.b
    public void startLocationUpdates(b bVar) throws Throwable {
        Log.d("[GplLibraryWrapper]", "startLocationUpdates");
        FusedLocationProviderClient fusedLocationProviderClient = this.f12548a;
        LocationRequest interval = LocationRequest.create().setInterval(this.f12553f);
        int ordinal = bVar.ordinal();
        fusedLocationProviderClient.requestLocationUpdates(interval.setPriority(ordinal != 1 ? ordinal != 2 ? ordinal != 3 ? 105 : 100 : 102 : 104), this.f12550c, this.f12551d);
    }

    @Override // com.yandex.metrica.gpllibrary.b
    public void stopLocationUpdates() throws Throwable {
        Log.d("[GplLibraryWrapper]", "stopLocationUpdates");
        this.f12548a.removeLocationUpdates(this.f12550c);
    }

    @Override // com.yandex.metrica.gpllibrary.b
    public void updateLastKnownLocation() throws Throwable {
        Log.d("[GplLibraryWrapper]", "updateLastKnownLocation");
        this.f12548a.getLastLocation().addOnSuccessListener(this.f12552e, new GplOnSuccessListener(this.f12549b));
    }

    a(C0345a c0345a, LocationListener locationListener, Looper looper, Executor executor, long j) throws Throwable {
        this.f12548a = c0345a.a();
        this.f12549b = locationListener;
        this.f12551d = looper;
        this.f12552e = executor;
        this.f12553f = j;
        this.f12550c = new GplLocationCallback(locationListener);
    }
}

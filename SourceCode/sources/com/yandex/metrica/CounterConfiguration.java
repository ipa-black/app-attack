package com.yandex.metrica;

import android.content.ContentValues;
import android.location.Location;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.google.android.gms.measurement.AppMeasurement;
import com.yandex.metrica.impl.ob.A2;
import com.yandex.metrica.impl.ob.C1927vc;
import com.yandex.metrica.impl.ob.ResultReceiverC1523f0;
@Deprecated
/* loaded from: classes3.dex */
public class CounterConfiguration implements Parcelable {
    public static final Parcelable.Creator<CounterConfiguration> CREATOR = new a();

    /* renamed from: a  reason: collision with root package name */
    private final ContentValues f12296a;

    /* loaded from: classes3.dex */
    class a implements Parcelable.Creator<CounterConfiguration> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        public CounterConfiguration createFromParcel(Parcel parcel) {
            return new CounterConfiguration((ContentValues) parcel.readBundle(ResultReceiverC1523f0.class.getClassLoader()).getParcelable("com.yandex.metrica.CounterConfiguration.data"));
        }

        @Override // android.os.Parcelable.Creator
        public CounterConfiguration[] newArray(int i) {
            return new CounterConfiguration[i];
        }
    }

    /* loaded from: classes3.dex */
    public enum b {
        MAIN("main"),
        MANUAL("manual"),
        APPMETRICA("appmetrica"),
        COMMUTATION("commutation"),
        SELF_DIAGNOSTIC_MAIN("self_diagnostic_main"),
        SELF_DIAGNOSTIC_MANUAL("self_diagnostic_manual"),
        CRASH(AppMeasurement.CRASH_ORIGIN);
        

        /* renamed from: a  reason: collision with root package name */
        private final String f12304a;

        b(String str) {
            this.f12304a = str;
        }

        public String a() {
            return this.f12304a;
        }

        public static b a(String str) {
            b[] values = values();
            for (int i2 = 0; i2 < 7; i2++) {
                b bVar = values[i2];
                if (bVar.f12304a.equals(str)) {
                    return bVar;
                }
            }
            return MAIN;
        }
    }

    public CounterConfiguration(CounterConfiguration counterConfiguration) {
        synchronized (counterConfiguration) {
            this.f12296a = new ContentValues(counterConfiguration.f12296a);
            r();
        }
    }

    private void a(String str) {
        if (A2.a((Object) str)) {
            synchronized (this) {
                this.f12296a.put("CFG_API_KEY", str);
            }
        }
    }

    private void b(Integer num) {
        if (A2.a(num)) {
            int intValue = num.intValue();
            synchronized (this) {
                ContentValues contentValues = this.f12296a;
                if (intValue <= 0) {
                    intValue = Integer.MAX_VALUE;
                }
                contentValues.put("CFG_MAX_REPORTS_COUNT", Integer.valueOf(intValue));
            }
        }
    }

    private void c(String str) {
        if ("20799a27-fa80-4b36-b2db-0f8141f24180".equals(str)) {
            b bVar = b.APPMETRICA;
            synchronized (this) {
                this.f12296a.put("CFG_REPORTER_TYPE", bVar.a());
            }
        }
        b bVar2 = b.MANUAL;
        synchronized (this) {
            this.f12296a.put("CFG_REPORTER_TYPE", bVar2.a());
        }
    }

    private void d(Integer num) {
        if (A2.a(num)) {
            int intValue = num.intValue();
            synchronized (this) {
                this.f12296a.put("CFG_SESSION_TIMEOUT", Integer.valueOf(intValue));
            }
        }
    }

    private void e(i iVar) {
        if (A2.a(iVar.locationTracking)) {
            b(iVar.locationTracking.booleanValue());
        }
    }

    private void f(i iVar) {
        if (A2.a(iVar.location)) {
            a(iVar.location);
        }
    }

    private void g(i iVar) {
        if (A2.a(iVar.j)) {
            boolean booleanValue = iVar.j.booleanValue();
            synchronized (this) {
                this.f12296a.put("CFG_PERMISSIONS_COLLECTING", Boolean.valueOf(booleanValue));
            }
        }
    }

    private void h(i iVar) {
        if (A2.a(iVar.revenueAutoTrackingEnabled)) {
            boolean booleanValue = iVar.revenueAutoTrackingEnabled.booleanValue();
            synchronized (this) {
                this.f12296a.put("CFG_REVENUE_AUTO_TRACKING_ENABLED", Boolean.valueOf(booleanValue));
            }
        }
    }

    private void r() {
        if (this.f12296a.containsKey("CFG_REPORTER_TYPE")) {
            return;
        }
        if (this.f12296a.containsKey("CFG_MAIN_REPORTER")) {
            if (this.f12296a.getAsBoolean("CFG_MAIN_REPORTER").booleanValue()) {
                b bVar = b.MAIN;
                synchronized (this) {
                    this.f12296a.put("CFG_REPORTER_TYPE", bVar.a());
                }
            }
            c(a());
        } else if (!this.f12296a.containsKey("CFG_COMMUTATION_REPORTER") || !this.f12296a.getAsBoolean("CFG_COMMUTATION_REPORTER").booleanValue()) {
        } else {
            b bVar2 = b.COMMUTATION;
            synchronized (this) {
                this.f12296a.put("CFG_REPORTER_TYPE", bVar2.a());
            }
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public Integer i() {
        return this.f12296a.getAsInteger("MAX_REPORTS_IN_DB_COUNT");
    }

    public Boolean j() {
        return this.f12296a.getAsBoolean("CFG_NATIVE_CRASHES_ENABLED");
    }

    public b k() {
        return b.a(this.f12296a.getAsString("CFG_REPORTER_TYPE"));
    }

    public Integer l() {
        return this.f12296a.getAsInteger("CFG_SESSION_TIMEOUT");
    }

    public Boolean m() {
        return this.f12296a.getAsBoolean("CFG_STATISTICS_SENDING");
    }

    public Boolean n() {
        return this.f12296a.getAsBoolean("CFG_IS_FIRST_ACTIVATION_AS_UPDATE");
    }

    public Boolean o() {
        return this.f12296a.getAsBoolean("CFG_LOCATION_TRACKING");
    }

    public Boolean p() {
        return this.f12296a.getAsBoolean("CFG_IS_LOG_ENABLED");
    }

    public synchronized Boolean q() {
        return this.f12296a.getAsBoolean("CFG_REVENUE_AUTO_TRACKING_ENABLED");
    }

    public synchronized String toString() {
        return "CounterConfiguration{mParamsMapping=" + this.f12296a + '}';
    }

    @Override // android.os.Parcelable
    public synchronized void writeToParcel(Parcel parcel, int i) {
        Bundle bundle = new Bundle();
        bundle.putParcelable("com.yandex.metrica.CounterConfiguration.data", this.f12296a);
        parcel.writeBundle(bundle);
    }

    private void a(Integer num) {
        if (A2.a(num)) {
            int intValue = num.intValue();
            synchronized (this) {
                this.f12296a.put("CFG_DISPATCH_PERIOD", Integer.valueOf(intValue));
            }
        }
    }

    public Integer e() {
        return this.f12296a.getAsInteger("CFG_DISPATCH_PERIOD");
    }

    public Boolean f() {
        return this.f12296a.getAsBoolean("CFG_LOCATION_ALLOWED_BY_BRIDGE");
    }

    private void b(i iVar) {
        if (TextUtils.isEmpty(iVar.appVersion)) {
            return;
        }
        String str = iVar.appVersion;
        synchronized (this) {
            this.f12296a.put("CFG_APP_VERSION", str);
        }
    }

    private void d(i iVar) {
        if (A2.a(iVar.firstActivationAsUpdate)) {
            boolean booleanValue = iVar.firstActivationAsUpdate.booleanValue();
            synchronized (this) {
                this.f12296a.put("CFG_IS_FIRST_ACTIVATION_AS_UPDATE", Boolean.valueOf(booleanValue));
            }
        }
    }

    public Location g() {
        if (this.f12296a.containsKey("CFG_MANUAL_LOCATION")) {
            byte[] asByteArray = this.f12296a.getAsByteArray("CFG_MANUAL_LOCATION");
            int i = C1927vc.q;
            if (asByteArray != null) {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.unmarshall(asByteArray, 0, asByteArray.length);
                    obtain.setDataPosition(0);
                    Location location = (Location) obtain.readValue(Location.class.getClassLoader());
                    obtain.recycle();
                    return location;
                } catch (Throwable unused) {
                    obtain.recycle();
                    return null;
                }
            }
            return null;
        }
        return null;
    }

    public Integer h() {
        return this.f12296a.getAsInteger("CFG_MAX_REPORTS_COUNT");
    }

    public CounterConfiguration() {
        this.f12296a = new ContentValues();
    }

    private void a(Boolean bool) {
        if (A2.a(bool)) {
            boolean booleanValue = bool.booleanValue();
            synchronized (this) {
                this.f12296a.put("CFG_IS_LOG_ENABLED", Boolean.valueOf(booleanValue));
            }
        }
    }

    private void c(i iVar) {
        if (A2.a((Object) iVar.f12560a)) {
            String str = iVar.f12560a;
            synchronized (this) {
                ContentValues contentValues = this.f12296a;
                if (TextUtils.isEmpty(str)) {
                    str = null;
                }
                contentValues.put("CFG_DEVICE_SIZE_TYPE", str);
            }
        }
    }

    public String d() {
        return this.f12296a.getAsString("CFG_DEVICE_SIZE_TYPE");
    }

    public CounterConfiguration(i iVar, b bVar) {
        this();
        synchronized (this) {
            a(iVar.apiKey);
            d(iVar.sessionTimeout);
            f(iVar);
            e(iVar);
            c(iVar);
            a(iVar.f12565f);
            b(iVar.f12566g);
            b(iVar);
            a(iVar);
            g(iVar);
            d(iVar);
            c(iVar.statisticsSending);
            c(iVar.maxReportsInDatabaseCount);
            b(iVar.nativeCrashReporting);
            h(iVar);
            a(bVar);
        }
    }

    private void b(Boolean bool) {
        if (A2.a(bool)) {
            this.f12296a.put("CFG_NATIVE_CRASHES_ENABLED", bool);
        }
    }

    public synchronized void d(String str) {
        this.f12296a.put("CFG_UUID", str);
    }

    private void a(i iVar) {
        if (A2.a(iVar.f12564e)) {
            int intValue = iVar.f12564e.intValue();
            synchronized (this) {
                this.f12296a.put("CFG_APP_VERSION_CODE", String.valueOf(intValue));
            }
        }
    }

    private void c(Boolean bool) {
        if (A2.a(bool)) {
            c(bool.booleanValue());
        }
    }

    public synchronized void b(String str) {
        this.f12296a.put("CFG_API_KEY", str);
    }

    private void c(Integer num) {
        if (A2.a(num)) {
            this.f12296a.put("MAX_REPORTS_IN_DB_COUNT", num);
        }
    }

    public synchronized void b(boolean z) {
        this.f12296a.put("CFG_LOCATION_TRACKING", Boolean.valueOf(z));
    }

    public String a() {
        return this.f12296a.getAsString("CFG_API_KEY");
    }

    public String b() {
        return this.f12296a.getAsString("CFG_APP_VERSION_CODE");
    }

    public synchronized void a(boolean z) {
        this.f12296a.put("CFG_LOCATION_ALLOWED_BY_BRIDGE", Boolean.valueOf(z));
    }

    public String c() {
        return this.f12296a.getAsString("CFG_APP_VERSION");
    }

    public final synchronized void a(Location location) {
        byte[] bArr;
        ContentValues contentValues = this.f12296a;
        int i = C1927vc.q;
        if (location != null) {
            Parcel obtain = Parcel.obtain();
            obtain.writeValue(location);
            bArr = obtain.marshall();
            obtain.recycle();
        } else {
            bArr = null;
        }
        contentValues.put("CFG_MANUAL_LOCATION", bArr);
    }

    public final synchronized void c(boolean z) {
        this.f12296a.put("CFG_STATISTICS_SENDING", Boolean.valueOf(z));
    }

    public CounterConfiguration(e eVar) {
        this();
        synchronized (this) {
            a(eVar.apiKey);
            d(eVar.sessionTimeout);
            a(eVar.f12507a);
            b(eVar.f12508b);
            a(eVar.logs);
            c(eVar.statisticsSending);
            c(eVar.maxReportsInDatabaseCount);
            c(eVar.apiKey);
        }
    }

    CounterConfiguration(ContentValues contentValues) {
        this.f12296a = contentValues;
        r();
    }

    public synchronized void a(b bVar) {
        this.f12296a.put("CFG_REPORTER_TYPE", bVar.a());
    }

    public static CounterConfiguration a(Bundle bundle) {
        CounterConfiguration counterConfiguration = null;
        if (bundle != null) {
            try {
                counterConfiguration = (CounterConfiguration) bundle.getParcelable("COUNTER_CFG_OBJ");
            } catch (Throwable unused) {
                return null;
            }
        }
        if (counterConfiguration == null) {
            counterConfiguration = new CounterConfiguration();
        }
        synchronized (counterConfiguration) {
            if (bundle != null) {
                if (bundle.getInt("CFG_DISPATCH_PERIOD") != 0) {
                    int i = bundle.getInt("CFG_DISPATCH_PERIOD");
                    synchronized (counterConfiguration) {
                        counterConfiguration.f12296a.put("CFG_DISPATCH_PERIOD", Integer.valueOf(i));
                    }
                }
                if (bundle.getInt("CFG_SESSION_TIMEOUT") != 0) {
                    int i2 = bundle.getInt("CFG_SESSION_TIMEOUT");
                    synchronized (counterConfiguration) {
                        counterConfiguration.f12296a.put("CFG_SESSION_TIMEOUT", Integer.valueOf(i2));
                    }
                }
                if (bundle.getInt("CFG_MAX_REPORTS_COUNT") != 0) {
                    int i3 = bundle.getInt("CFG_MAX_REPORTS_COUNT");
                    synchronized (counterConfiguration) {
                        ContentValues contentValues = counterConfiguration.f12296a;
                        if (i3 <= 0) {
                            i3 = Integer.MAX_VALUE;
                        }
                        contentValues.put("CFG_MAX_REPORTS_COUNT", Integer.valueOf(i3));
                    }
                }
                if (bundle.getString("CFG_API_KEY") != null && !"-1".equals(bundle.getString("CFG_API_KEY"))) {
                    counterConfiguration.b(bundle.getString("CFG_API_KEY"));
                }
            }
        }
        return counterConfiguration;
    }
}

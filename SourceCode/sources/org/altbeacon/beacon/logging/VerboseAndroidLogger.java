package org.altbeacon.beacon.logging;

import android.util.Log;
/* loaded from: classes5.dex */
final class VerboseAndroidLogger extends AbstractAndroidLogger {
    @Override // org.altbeacon.beacon.logging.Logger
    public void v(String str, String str2, Object... objArr) {
        Log.v(str, formatString(str2, objArr));
    }

    @Override // org.altbeacon.beacon.logging.Logger
    public void v(Throwable th, String str, String str2, Object... objArr) {
        Log.v(str, formatString(str2, objArr), th);
    }

    @Override // org.altbeacon.beacon.logging.Logger
    public void d(String str, String str2, Object... objArr) {
        Log.d(str, formatString(str2, objArr));
    }

    @Override // org.altbeacon.beacon.logging.Logger
    public void d(Throwable th, String str, String str2, Object... objArr) {
        Log.d(str, formatString(str2, objArr), th);
    }

    @Override // org.altbeacon.beacon.logging.Logger
    public void i(String str, String str2, Object... objArr) {
        Log.i(str, formatString(str2, objArr));
    }

    @Override // org.altbeacon.beacon.logging.Logger
    public void i(Throwable th, String str, String str2, Object... objArr) {
        Log.i(str, formatString(str2, objArr), th);
    }

    @Override // org.altbeacon.beacon.logging.Logger
    public void w(String str, String str2, Object... objArr) {
        Log.w(str, formatString(str2, objArr));
    }

    @Override // org.altbeacon.beacon.logging.Logger
    public void w(Throwable th, String str, String str2, Object... objArr) {
        Log.w(str, formatString(str2, objArr), th);
    }

    @Override // org.altbeacon.beacon.logging.Logger
    public void e(String str, String str2, Object... objArr) {
        Log.e(str, formatString(str2, objArr));
    }

    @Override // org.altbeacon.beacon.logging.Logger
    public void e(Throwable th, String str, String str2, Object... objArr) {
        Log.e(str, formatString(str2, objArr), th);
    }
}

package org.altbeacon.beacon.logging;
/* loaded from: classes5.dex */
abstract class AbstractAndroidLogger implements Logger {
    /* JADX INFO: Access modifiers changed from: protected */
    public String formatString(String str, Object... objArr) {
        return objArr.length == 0 ? str : String.format(str, objArr);
    }
}

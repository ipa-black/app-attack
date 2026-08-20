package com.explorestack.iab.mraid;

import android.content.Context;
import com.google.firebase.messaging.Constants;
import java.util.Arrays;
/* loaded from: classes2.dex */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    public boolean f9314a;

    /* renamed from: b  reason: collision with root package name */
    public int f9315b;

    public c(boolean z, int i) {
        this.f9314a = z;
        this.f9315b = i;
    }

    public static int a(String str) {
        int indexOf = Arrays.asList("portrait", "landscape", "none").indexOf(str);
        if (indexOf != -1) {
            return indexOf;
        }
        return 2;
    }

    public int a(Context context) {
        int i = context.getResources().getConfiguration().orientation == 1 ? 1 : 0;
        int i2 = this.f9315b;
        if (i2 == 0) {
            return 1;
        }
        if (i2 == 1) {
            return 0;
        }
        if (this.f9314a) {
            return -1;
        }
        return i;
    }

    public String a() {
        int i = this.f9315b;
        return i != 0 ? i != 1 ? i != 2 ? Constants.IPC_BUNDLE_KEY_SEND_ERROR : "none" : "landscape" : "portrait";
    }

    public String toString() {
        return "MRAIDOrientationProperties{allowOrientationChange=" + this.f9314a + ", forceOrientation=" + a() + '}';
    }
}

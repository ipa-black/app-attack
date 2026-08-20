package com.appodeal.ads;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import java.io.IOException;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Objects;
/* loaded from: classes.dex */
public final class a5 {

    /* renamed from: a  reason: collision with root package name */
    public static final String[] f6431a = {"appodeal", AppodealNetworks.BIDMACHINE, "mraid", "vast", "nast"};

    /* renamed from: b  reason: collision with root package name */
    public static boolean f6432b = false;

    /* loaded from: classes.dex */
    public static final class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        public final Context f6433a;

        public a(Context context) {
            this.f6433a = context;
        }

        @Override // java.lang.Runnable
        public final void run() {
            HashSet hashSet;
            String[] strArr = new String[0];
            try {
                strArr = this.f6433a.getAssets().list("apd_adapters");
            } catch (IOException e2) {
                e2.printStackTrace();
            }
            if (strArr == null || strArr.length == 0) {
                hashSet = new HashSet();
                hashSet.addAll(Arrays.asList(a5.f6431a));
            } else {
                String[] strArr2 = a5.f6431a;
                hashSet = null;
                for (int i = 0; i < 5; i++) {
                    String str = strArr2[i];
                    String format = String.format("%s.apdnetwork", str);
                    int length = strArr.length;
                    int i2 = 0;
                    while (true) {
                        if (i2 >= length) {
                            if (hashSet == null) {
                                hashSet = new HashSet();
                            }
                            hashSet.add(str.toUpperCase());
                        } else if (Objects.equals(strArr[i2], format)) {
                            break;
                        } else {
                            i2++;
                        }
                    }
                }
            }
            if (hashSet != null) {
                Log.e("Appodeal", String.format(" \n\nATTENTION:\n\tAdapters are not registered in you app: \n\t\t%s.\n\tPlease add the dependencies for them to improve your fill rates and increase revenue.\n\tIf you are sure that you do not need these adapters, skip this warning.\n ", TextUtils.join(", ", hashSet)));
            }
        }
    }

    public static void a(Context context) {
        if (f6432b) {
            return;
        }
        f6432b = true;
        new Thread(new a(context)).start();
    }
}

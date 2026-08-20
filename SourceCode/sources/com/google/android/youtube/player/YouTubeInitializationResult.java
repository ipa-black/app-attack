package com.google.android.youtube.player;

import android.app.Activity;
import android.app.Dialog;
import android.content.ActivityNotFoundException;
import android.content.DialogInterface;
import android.content.Intent;
import com.google.android.youtube.player.internal.ab;
import com.google.android.youtube.player.internal.y;
/* loaded from: classes4.dex */
public enum YouTubeInitializationResult {
    SUCCESS,
    INTERNAL_ERROR,
    UNKNOWN_ERROR,
    SERVICE_MISSING,
    SERVICE_VERSION_UPDATE_REQUIRED,
    SERVICE_DISABLED,
    SERVICE_INVALID,
    ERROR_CONNECTING_TO_SERVICE,
    CLIENT_LIBRARY_UPDATE_REQUIRED,
    NETWORK_ERROR,
    DEVELOPER_KEY_INVALID,
    INVALID_APPLICATION_SIGNATURE;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.youtube.player.YouTubeInitializationResult$1  reason: invalid class name */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f9691a;

        static {
            int[] iArr = new int[YouTubeInitializationResult.values().length];
            f9691a = iArr;
            try {
                iArr[YouTubeInitializationResult.SERVICE_MISSING.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f9691a[YouTubeInitializationResult.SERVICE_DISABLED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f9691a[YouTubeInitializationResult.SERVICE_VERSION_UPDATE_REQUIRED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public static final class a implements DialogInterface.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        private final Activity f9692a;

        /* renamed from: b  reason: collision with root package name */
        private final Intent f9693b;

        /* renamed from: c  reason: collision with root package name */
        private final int f9694c;

        public a(Activity activity, Intent intent, int i) {
            this.f9692a = (Activity) ab.a(activity);
            this.f9693b = (Intent) ab.a(intent);
            this.f9694c = ((Integer) ab.a(Integer.valueOf(i))).intValue();
        }

        @Override // android.content.DialogInterface.OnClickListener
        public final void onClick(DialogInterface dialogInterface, int i) {
            try {
                this.f9692a.startActivityForResult(this.f9693b, this.f9694c);
                dialogInterface.dismiss();
            } catch (ActivityNotFoundException e2) {
                y.a("Can't perform resolution for YouTubeInitalizationError", e2);
            }
        }
    }

    public final Dialog getErrorDialog(Activity activity, int i) {
        return getErrorDialog(activity, i, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0042  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x008c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.app.Dialog getErrorDialog(android.app.Activity r6, int r7, android.content.DialogInterface.OnCancelListener r8) {
        /*
            r5 = this;
            android.app.AlertDialog$Builder r0 = new android.app.AlertDialog$Builder
            r0.<init>(r6)
            if (r8 == 0) goto La
            r0.setOnCancelListener(r8)
        La:
            int[] r8 = com.google.android.youtube.player.YouTubeInitializationResult.AnonymousClass1.f9691a
            int r1 = r5.ordinal()
            r8 = r8[r1]
            r1 = 3
            r2 = 2
            r3 = 1
            if (r8 == r3) goto L26
            if (r8 == r2) goto L1d
            if (r8 == r1) goto L26
            r8 = 0
            goto L2e
        L1d:
            java.lang.String r8 = com.google.android.youtube.player.internal.z.a(r6)
            android.content.Intent r8 = com.google.android.youtube.player.internal.z.a(r8)
            goto L2e
        L26:
            java.lang.String r8 = com.google.android.youtube.player.internal.z.a(r6)
            android.content.Intent r8 = com.google.android.youtube.player.internal.z.b(r8)
        L2e:
            com.google.android.youtube.player.YouTubeInitializationResult$a r4 = new com.google.android.youtube.player.YouTubeInitializationResult$a
            r4.<init>(r6, r8, r7)
            com.google.android.youtube.player.internal.m r7 = new com.google.android.youtube.player.internal.m
            r7.<init>(r6)
            int[] r6 = com.google.android.youtube.player.YouTubeInitializationResult.AnonymousClass1.f9691a
            int r8 = r5.ordinal()
            r6 = r6[r8]
            if (r6 == r3) goto L8c
            if (r6 == r2) goto L7d
            if (r6 == r1) goto L66
            java.lang.IllegalArgumentException r6 = new java.lang.IllegalArgumentException
            java.lang.String r7 = r5.name()
            java.lang.String r7 = java.lang.String.valueOf(r7)
            int r8 = r7.length()
            java.lang.String r0 = "Unexpected errorReason: "
            if (r8 == 0) goto L5d
            java.lang.String r7 = r0.concat(r7)
            goto L62
        L5d:
            java.lang.String r7 = new java.lang.String
            r7.<init>(r0)
        L62:
            r6.<init>(r7)
            throw r6
        L66:
            java.lang.String r6 = r7.f9750h
            android.app.AlertDialog$Builder r6 = r0.setTitle(r6)
            java.lang.String r8 = r7.i
            android.app.AlertDialog$Builder r6 = r6.setMessage(r8)
            java.lang.String r7 = r7.j
        L74:
            android.app.AlertDialog$Builder r6 = r6.setPositiveButton(r7, r4)
            android.app.AlertDialog r6 = r6.create()
            return r6
        L7d:
            java.lang.String r6 = r7.f9747e
            android.app.AlertDialog$Builder r6 = r0.setTitle(r6)
            java.lang.String r8 = r7.f9748f
            android.app.AlertDialog$Builder r6 = r6.setMessage(r8)
            java.lang.String r7 = r7.f9749g
            goto L74
        L8c:
            java.lang.String r6 = r7.f9744b
            android.app.AlertDialog$Builder r6 = r0.setTitle(r6)
            java.lang.String r8 = r7.f9745c
            android.app.AlertDialog$Builder r6 = r6.setMessage(r8)
            java.lang.String r7 = r7.f9746d
            goto L74
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.youtube.player.YouTubeInitializationResult.getErrorDialog(android.app.Activity, int, android.content.DialogInterface$OnCancelListener):android.app.Dialog");
    }

    public final boolean isUserRecoverableError() {
        int i = AnonymousClass1.f9691a[ordinal()];
        return i == 1 || i == 2 || i == 3;
    }
}

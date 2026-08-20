package com.appodeal.ads.utils;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Point;
import android.widget.ImageView;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.appodeal.ads.f1;
import com.appodeal.ads.h5;
import com.appodeal.ads.l2;
import com.appodeal.ads.modules.common.internal.LogConstants;
import com.appodeal.ads.utils.p;
import com.ironsource.mediationsdk.utils.IronSourceConstants;
import java.lang.ref.WeakReference;
/* loaded from: classes2.dex */
public final class p {

    /* loaded from: classes2.dex */
    public static class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        public final Context f7810a;

        /* renamed from: b  reason: collision with root package name */
        public final String f7811b;

        /* renamed from: c  reason: collision with root package name */
        public final WeakReference<ImageView> f7812c;

        /* renamed from: d  reason: collision with root package name */
        public final b f7813d;

        /* renamed from: e  reason: collision with root package name */
        public Bitmap f7814e;

        public a(Context context, String str, ImageView imageView, l2.b bVar) {
            this.f7810a = context;
            this.f7811b = str;
            this.f7812c = new WeakReference<>(imageView);
            this.f7813d = bVar;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a() {
            Bitmap bitmap;
            ImageView imageView = this.f7812c.get();
            if (imageView != null && (bitmap = this.f7814e) != null) {
                ((l2.b) this.f7813d).getClass();
                imageView.setImageBitmap(bitmap);
                return;
            }
            ((l2.b) this.f7813d).getClass();
            Log.log(LogConstants.KEY_NATIVE, LogConstants.EVENT_ASSETS_ERROR, "Target ImageView or Bitmap is invalid");
        }

        @Override // java.lang.Runnable
        public final void run() {
            try {
                BitmapFactory.Options options = new BitmapFactory.Options();
                int i = 1;
                options.inJustDecodeBounds = true;
                BitmapFactory.decodeFile(this.f7811b, options);
                if (options.outWidth != 0 && options.outHeight != 0) {
                    int a2 = p.a(this.f7810a);
                    int a3 = p.a(a2, false);
                    int i2 = options.outWidth;
                    int i3 = options.outHeight;
                    while (true) {
                        if (i2 / i <= a2 && i3 / i <= a3) {
                            options.inSampleSize = i;
                            options.inJustDecodeBounds = false;
                            this.f7814e = BitmapFactory.decodeFile(this.f7811b, options);
                            h5.f6714a.post(new Runnable() { // from class: com.appodeal.ads.utils.p$a$$ExternalSyntheticLambda0
                                @Override // java.lang.Runnable
                                public final void run() {
                                    p.a.this.a();
                                }
                            });
                            return;
                        }
                        i *= 2;
                    }
                }
                ((l2.b) this.f7813d).getClass();
                Log.log(LogConstants.KEY_NATIVE, LogConstants.EVENT_ASSETS_ERROR, "Image size is (0;0)");
            } catch (Exception e2) {
                if (e2.getMessage() == null) {
                    ((l2.b) this.f7813d).getClass();
                    Log.log(LogConstants.KEY_NATIVE, LogConstants.EVENT_ASSETS_ERROR, "ImagePreparation error");
                    return;
                }
                b bVar = this.f7813d;
                String message = e2.getMessage();
                ((l2.b) bVar).getClass();
                Log.log(LogConstants.KEY_NATIVE, LogConstants.EVENT_ASSETS_ERROR, message);
            }
        }
    }

    /* loaded from: classes2.dex */
    public interface b {
    }

    public static int a(int i, boolean z) {
        if (z) {
            i = (int) (i / 1.5f);
        }
        return i > 700 ? TypedValues.TransitionType.TYPE_DURATION : i;
    }

    public static int a(Context context) {
        Point o = f1.o(context);
        return Math.min((int) IronSourceConstants.RV_INSTANCE_LOAD_FAILED, Math.min(o.x, o.y));
    }
}

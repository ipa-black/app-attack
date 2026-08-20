package c;

import android.content.Context;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes.dex */
public abstract class a {

    /* renamed from: a  reason: collision with root package name */
    public static final AtomicBoolean f20a = new AtomicBoolean(false);

    public final void a(Context context) {
        if (f20a.compareAndSet(false, true)) {
            try {
                b(context);
            } catch (Throwable unused) {
            }
        }
    }

    public abstract void b(Context context);
}

package com.google.android.youtube.player.internal;

import android.app.Activity;
import android.content.Context;
import com.google.android.youtube.player.YouTubeThumbnailView;
import com.google.android.youtube.player.internal.t;
import com.google.android.youtube.player.internal.w;
/* loaded from: classes4.dex */
public abstract class aa {

    /* renamed from: a  reason: collision with root package name */
    private static final aa f9732a = b();

    public static aa a() {
        return f9732a;
    }

    private static aa b() {
        try {
            try {
                return (aa) Class.forName("com.google.android.youtube.api.locallylinked.LocallyLinkedFactory").asSubclass(aa.class).newInstance();
            } catch (IllegalAccessException e2) {
                throw new IllegalStateException(e2);
            } catch (InstantiationException e3) {
                throw new IllegalStateException(e3);
            }
        } catch (ClassNotFoundException unused) {
            return new ac();
        }
    }

    public abstract a a(b bVar, YouTubeThumbnailView youTubeThumbnailView);

    public abstract b a(Context context, String str, t.a aVar, t.b bVar);

    public abstract d a(Activity activity, b bVar, boolean z) throws w.a;
}

package com.criteo.publisher.advancednative;

import android.graphics.drawable.Drawable;
import android.widget.ImageView;
import com.criteo.publisher.e0.a;
import com.squareup.picasso.Callback;
import com.squareup.picasso.Picasso;
import com.squareup.picasso.RequestCreator;
import java.net.URL;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: CriteoImageLoader.kt */
/* loaded from: classes2.dex */
public final class g implements ImageLoader {

    /* renamed from: a  reason: collision with root package name */
    private final Picasso f8650a;

    /* renamed from: b  reason: collision with root package name */
    private final com.criteo.publisher.e0.a f8651b;

    /* compiled from: CriteoImageLoader.kt */
    /* loaded from: classes2.dex */
    static final class a extends Lambda implements Function1<a.C0246a, Unit> {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ URL f8653b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ Drawable f8654c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ ImageView f8655d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(URL url, Drawable drawable, ImageView imageView) {
            super(1);
            this.f8653b = url;
            this.f8654c = drawable;
            this.f8655d = imageView;
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(a.C0246a c0246a) {
            a(c0246a);
            return Unit.INSTANCE;
        }

        public final void a(a.C0246a receiver) {
            Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
            g gVar = g.this;
            RequestCreator load = gVar.f8650a.load(this.f8653b.toString());
            Intrinsics.checkExpressionValueIsNotNull(load, "picasso.load(imageUrl.toString())");
            gVar.a(load, this.f8654c).into(this.f8655d, new C0244a(receiver));
        }

        /* compiled from: CriteoImageLoader.kt */
        /* renamed from: com.criteo.publisher.advancednative.g$a$a  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        public static final class C0244a implements Callback {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ a.C0246a f8656a;

            C0244a(a.C0246a c0246a) {
                this.f8656a = c0246a;
            }

            @Override // com.squareup.picasso.Callback
            public void onSuccess() {
                this.f8656a.a();
            }

            @Override // com.squareup.picasso.Callback
            public void onError(Exception e2) {
                Intrinsics.checkParameterIsNotNull(e2, "e");
                this.f8656a.a();
            }
        }
    }

    public g(Picasso picasso, com.criteo.publisher.e0.a asyncResources) {
        Intrinsics.checkParameterIsNotNull(picasso, "picasso");
        Intrinsics.checkParameterIsNotNull(asyncResources, "asyncResources");
        this.f8650a = picasso;
        this.f8651b = asyncResources;
    }

    @Override // com.criteo.publisher.advancednative.ImageLoader
    public void preload(URL imageUrl) {
        Intrinsics.checkParameterIsNotNull(imageUrl, "imageUrl");
        this.f8650a.load(imageUrl.toString()).fetch();
    }

    @Override // com.criteo.publisher.advancednative.ImageLoader
    public void loadImageInto(URL imageUrl, ImageView imageView, Drawable drawable) {
        Intrinsics.checkParameterIsNotNull(imageUrl, "imageUrl");
        Intrinsics.checkParameterIsNotNull(imageView, "imageView");
        this.f8651b.a(new a(imageUrl, drawable, imageView));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final RequestCreator a(RequestCreator requestCreator, Drawable drawable) {
        if (drawable != null) {
            RequestCreator placeholder = requestCreator.placeholder(drawable);
            Intrinsics.checkExpressionValueIsNotNull(placeholder, "placeholder(placeholder)");
            return placeholder;
        }
        return requestCreator;
    }
}

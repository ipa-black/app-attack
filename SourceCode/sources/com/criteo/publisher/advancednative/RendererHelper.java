package com.criteo.publisher.advancednative;

import android.graphics.drawable.Drawable;
import android.widget.ImageView;
import com.criteo.publisher.x;
import java.net.URL;
/* loaded from: classes2.dex */
public class RendererHelper {
    private final h imageLoaderHolder;
    private final com.criteo.publisher.e0.c uiExecutor;

    public RendererHelper(h hVar, com.criteo.publisher.e0.c cVar) {
        this.imageLoaderHolder = hVar;
        this.uiExecutor = cVar;
    }

    /* loaded from: classes2.dex */
    class a extends x {

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ URL f8625c;

        a(URL url) {
            this.f8625c = url;
        }

        @Override // com.criteo.publisher.x
        public void a() throws Throwable {
            RendererHelper.this.imageLoaderHolder.a().preload(this.f8625c);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void preloadMedia(URL url) {
        new a(url).run();
    }

    public void setMediaInView(CriteoMedia criteoMedia, CriteoMediaView criteoMediaView) {
        setMediaInView(criteoMedia.getImageUrl(), criteoMediaView.getImageView(), criteoMediaView.getPlaceholder());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class b extends x {

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ URL f8627c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ ImageView f8628d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ Drawable f8629e;

        b(URL url, ImageView imageView, Drawable drawable) {
            this.f8627c = url;
            this.f8628d = imageView;
            this.f8629e = drawable;
        }

        @Override // com.criteo.publisher.x
        public void a() throws Throwable {
            RendererHelper.this.imageLoaderHolder.a().loadImageInto(this.f8627c, this.f8628d, this.f8629e);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setMediaInView(URL url, ImageView imageView, Drawable drawable) {
        this.uiExecutor.execute(new b(url, imageView, drawable));
    }
}

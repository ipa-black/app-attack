package com.applovin.mediation.nativeAds;

import android.view.View;
/* loaded from: classes.dex */
public class MaxNativeAdViewBinder {
    protected final int advertiserTextViewId;
    protected final int bodyTextViewId;
    protected final int callToActionButtonId;
    protected final int iconContentViewId;
    protected final int iconImageViewId;
    protected final int layoutResourceId;
    protected final View mainView;
    protected final int mediaContentFrameLayoutId;
    protected final int mediaContentViewGroupId;
    protected final int optionsContentFrameLayoutId;
    protected final int optionsContentViewGroupId;
    protected final String templateType;
    protected final int titleTextViewId;

    /* loaded from: classes.dex */
    public static class Builder {

        /* renamed from: a  reason: collision with root package name */
        private final View f6297a;

        /* renamed from: b  reason: collision with root package name */
        private final int f6298b;

        /* renamed from: c  reason: collision with root package name */
        private int f6299c;

        /* renamed from: d  reason: collision with root package name */
        private int f6300d;

        /* renamed from: e  reason: collision with root package name */
        private int f6301e;

        /* renamed from: f  reason: collision with root package name */
        private int f6302f;

        /* renamed from: g  reason: collision with root package name */
        private int f6303g;

        /* renamed from: h  reason: collision with root package name */
        private int f6304h;
        private int i;
        private int j;
        private int k;
        private int l;
        private String m;

        public Builder(int i) {
            this(i, null);
        }

        private Builder(int i, View view) {
            this.f6299c = -1;
            this.f6300d = -1;
            this.f6301e = -1;
            this.f6302f = -1;
            this.f6303g = -1;
            this.f6304h = -1;
            this.i = -1;
            this.j = -1;
            this.k = -1;
            this.l = -1;
            this.f6298b = i;
            this.f6297a = view;
        }

        public Builder(View view) {
            this(-1, view);
        }

        public MaxNativeAdViewBinder build() {
            return new MaxNativeAdViewBinder(this.f6297a, this.f6298b, this.f6299c, this.f6300d, this.f6301e, this.f6302f, this.f6303g, this.f6304h, this.i, this.j, this.k, this.l, this.m);
        }

        public Builder setAdvertiserTextViewId(int i) {
            this.f6300d = i;
            return this;
        }

        public Builder setBodyTextViewId(int i) {
            this.f6301e = i;
            return this;
        }

        public Builder setCallToActionButtonId(int i) {
            this.l = i;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Deprecated
        public Builder setIconContentViewId(int i) {
            this.f6303g = i;
            return this;
        }

        public Builder setIconImageViewId(int i) {
            this.f6302f = i;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Deprecated
        public Builder setMediaContentFrameLayoutId(int i) {
            this.k = i;
            return this;
        }

        public Builder setMediaContentViewGroupId(int i) {
            this.j = i;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Deprecated
        public Builder setOptionsContentFrameLayoutId(int i) {
            this.i = i;
            return this;
        }

        public Builder setOptionsContentViewGroupId(int i) {
            this.f6304h = i;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public Builder setTemplateType(String str) {
            this.m = str;
            return this;
        }

        public Builder setTitleTextViewId(int i) {
            this.f6299c = i;
            return this;
        }
    }

    private MaxNativeAdViewBinder(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10, int i11, String str) {
        this.mainView = view;
        this.layoutResourceId = i;
        this.titleTextViewId = i2;
        this.advertiserTextViewId = i3;
        this.bodyTextViewId = i4;
        this.iconImageViewId = i5;
        this.iconContentViewId = i6;
        this.optionsContentViewGroupId = i7;
        this.optionsContentFrameLayoutId = i8;
        this.mediaContentViewGroupId = i9;
        this.mediaContentFrameLayoutId = i10;
        this.callToActionButtonId = i11;
        this.templateType = str;
    }
}

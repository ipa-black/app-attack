package com.bytedance.adsdk.ugeno.viewpager;

import android.os.Parcel;
import android.os.Parcelable;
/* compiled from: AbsSavedState.java */
/* loaded from: classes2.dex */
public abstract class Qhi implements Parcelable {
    private final Parcelable cJ;
    public static final Qhi Qhi = new Qhi() { // from class: com.bytedance.adsdk.ugeno.viewpager.Qhi.1
    };
    public static final Parcelable.Creator<Qhi> CREATOR = new Parcelable.ClassLoaderCreator<Qhi>() { // from class: com.bytedance.adsdk.ugeno.viewpager.Qhi.2
        @Override // android.os.Parcelable.Creator
        /* renamed from: Qhi */
        public Qhi createFromParcel(Parcel parcel) {
            return createFromParcel(parcel, null);
        }

        @Override // android.os.Parcelable.ClassLoaderCreator
        /* renamed from: Qhi */
        public Qhi createFromParcel(Parcel parcel, ClassLoader classLoader) {
            if (parcel.readParcelable(classLoader) != null) {
                throw new IllegalStateException("superState must be null");
            }
            return Qhi.Qhi;
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: Qhi */
        public Qhi[] newArray(int i) {
            return new Qhi[i];
        }
    };

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    private Qhi() {
        this.cJ = null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Qhi(Parcelable parcelable) {
        if (parcelable == null) {
            throw new IllegalArgumentException("superState must not be null");
        }
        this.cJ = parcelable == Qhi ? null : parcelable;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Qhi(Parcel parcel, ClassLoader classLoader) {
        Parcelable readParcelable = parcel.readParcelable(classLoader);
        this.cJ = readParcelable == null ? Qhi : readParcelable;
    }

    public final Parcelable Qhi() {
        return this.cJ;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeParcelable(this.cJ, i);
    }
}

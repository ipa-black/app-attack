package com.appsgeyser.sdk.configuration.models;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes2.dex */
public class ConfigPhpSdkModel implements Parcelable {
    public static final Parcelable.Creator<ConfigPhpSdkModel> CREATOR = new Parcelable.Creator<ConfigPhpSdkModel>() { // from class: com.appsgeyser.sdk.configuration.models.ConfigPhpSdkModel.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ConfigPhpSdkModel createFromParcel(Parcel parcel) {
            return new ConfigPhpSdkModel(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ConfigPhpSdkModel[] newArray(int i) {
            return new ConfigPhpSdkModel[i];
        }
    };
    private boolean active;
    private boolean activeByDefault;
    private String id;
    private String tag;
    private String textOfPolicy;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public ConfigPhpSdkModel(boolean z, String str, boolean z2, String str2, String str3) {
        this.active = z;
        this.id = str;
        this.activeByDefault = z2;
        this.textOfPolicy = str2;
        this.tag = str3;
    }

    private ConfigPhpSdkModel(Parcel parcel) {
        this.active = parcel.readByte() != 0;
        this.id = parcel.readString();
        this.activeByDefault = parcel.readByte() != 0;
        this.textOfPolicy = parcel.readString();
        this.tag = parcel.readString();
    }

    public boolean isActive() {
        return this.active;
    }

    public void setActive(boolean z) {
        this.active = z;
    }

    public String getId() {
        return this.id;
    }

    public void setId(String str) {
        this.id = str;
    }

    public String getTag() {
        return this.tag;
    }

    public void setTag(String str) {
        this.tag = str;
    }

    public boolean isActiveByDefault() {
        return this.activeByDefault;
    }

    public void setActiveByDefault(boolean z) {
        this.activeByDefault = z;
    }

    public String getTextOfPolicy() {
        return this.textOfPolicy;
    }

    public void setTextOfPolicy(String str) {
        this.textOfPolicy = str;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeByte(this.active ? (byte) 1 : (byte) 0);
        parcel.writeString(this.id);
        parcel.writeByte(this.activeByDefault ? (byte) 1 : (byte) 0);
        parcel.writeString(this.textOfPolicy);
        parcel.writeString(this.tag);
    }
}

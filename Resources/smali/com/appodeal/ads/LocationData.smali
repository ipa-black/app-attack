.class public interface abstract Lcom/appodeal/ads/LocationData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0004\u0008f\u0018\u00002\u00020\u0001J\n\u0010\u0002\u001a\u0004\u0018\u00010\u0003H&J\u000f\u0010\u0004\u001a\u0004\u0018\u00010\u0005H&\u00a2\u0006\u0002\u0010\u0006J\u000f\u0010\u0007\u001a\u0004\u0018\u00010\u0008H&\u00a2\u0006\u0002\u0010\tJ\n\u0010\n\u001a\u0004\u0018\u00010\u0003H&J\u000f\u0010\u000b\u001a\u0004\u0018\u00010\u0008H&\u00a2\u0006\u0002\u0010\t\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/appodeal/ads/LocationData;",
        "",
        "getDeviceLocation",
        "Landroid/location/Location;",
        "getDeviceLocationType",
        "",
        "()Ljava/lang/Integer;",
        "obtainLatitude",
        "",
        "()Ljava/lang/Float;",
        "obtainLocation",
        "obtainLongitude",
        "apd_core"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# virtual methods
.method public abstract getDeviceLocation()Landroid/location/Location;
.end method

.method public abstract getDeviceLocationType()Ljava/lang/Integer;
.end method

.method public abstract obtainLatitude()Ljava/lang/Float;
.end method

.method public abstract obtainLocation()Landroid/location/Location;
.end method

.method public abstract obtainLongitude()Ljava/lang/Float;
.end method

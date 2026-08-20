.class public Lcom/appsgeyser/multiTabApp/utils/Geolocation;
.super Ljava/lang/Object;
.source "Geolocation.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCoords(Landroid/app/Activity;)[D
    .locals 4

    .line 13
    invoke-static {p0}, Lcom/appsgeyser/multiTabApp/utils/Geolocation;->getLocation(Landroid/app/Activity;)Landroid/location/Location;

    move-result-object p0

    const/4 v0, 0x2

    .line 14
    new-array v0, v0, [D

    if-eqz p0, :cond_0

    const/4 v1, 0x0

    .line 16
    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    aput-wide v2, v0, v1

    const/4 v1, 0x1

    .line 17
    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    aput-wide v2, v0, v1

    :cond_0
    return-object v0
.end method

.method public static getLocation(Landroid/app/Activity;)Landroid/location/Location;
    .locals 4

    const/4 v0, 0x0

    .line 25
    :try_start_0
    const-string v1, "location"

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/location/LocationManager;

    const/4 v1, 0x1

    .line 26
    invoke-virtual {p0, v1}, Landroid/location/LocationManager;->getProviders(Z)Ljava/util/List;

    move-result-object v2

    .line 31
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v1

    move-object v1, v0

    :goto_0
    if-ltz v3, :cond_1

    .line 32
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object v1

    :catch_0
    return-object v0
.end method

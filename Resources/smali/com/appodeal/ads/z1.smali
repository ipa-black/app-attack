.class public final Lcom/appodeal/ads/z1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/appodeal/ads/LocationData;


# static fields
.field public static d:Landroid/location/Location;


# instance fields
.field public final a:Lcom/appodeal/ads/RestrictedData;

.field public final b:Landroid/location/Location;

.field public final c:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/appodeal/ads/RestrictedData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/appodeal/ads/z1;->a:Lcom/appodeal/ads/RestrictedData;

    if-eqz p1, :cond_0

    sget-object p2, Lcom/appodeal/ads/q4;->a:Lcom/appodeal/ads/q4;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/appodeal/ads/q4;->p()Z

    move-result p2

    if-nez p2, :cond_0

    invoke-static {p1}, Lcom/appodeal/ads/f1;->i(Landroid/content/Context;)Landroid/location/Location;

    move-result-object p1

    iput-object p1, p0, Lcom/appodeal/ads/z1;->b:Landroid/location/Location;

    if-eqz p1, :cond_1

    sput-object p1, Lcom/appodeal/ads/z1;->d:Landroid/location/Location;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/appodeal/ads/z1;->d:Landroid/location/Location;

    iput-object p1, p0, Lcom/appodeal/ads/z1;->b:Landroid/location/Location;

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/appodeal/ads/z1;->b:Landroid/location/Location;

    if-nez p1, :cond_2

    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    const/4 p1, 0x1

    :goto_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/appodeal/ads/z1;->c:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public final getDeviceLocation()Landroid/location/Location;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/z1;->a:Lcom/appodeal/ads/RestrictedData;

    invoke-interface {v0}, Lcom/appodeal/ads/RestrictedData;->canSendLocation()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appodeal/ads/z1;->b:Landroid/location/Location;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getDeviceLocationType()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/z1;->a:Lcom/appodeal/ads/RestrictedData;

    invoke-interface {v0}, Lcom/appodeal/ads/RestrictedData;->canSendLocationType()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appodeal/ads/z1;->c:Ljava/lang/Integer;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final obtainLatitude()Ljava/lang/Float;
    .locals 2

    iget-object v0, p0, Lcom/appodeal/ads/z1;->a:Lcom/appodeal/ads/RestrictedData;

    invoke-interface {v0}, Lcom/appodeal/ads/RestrictedData;->canSendLocation()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/appodeal/ads/z1;->b:Landroid/location/Location;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->floatValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {}, Lcom/appodeal/ads/l5;->a()Lcom/appodeal/ads/l5;

    move-result-object v0

    .line 1
    iget-object v0, v0, Lcom/appodeal/ads/l5;->h:Ljava/lang/Float;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final obtainLocation()Landroid/location/Location;
    .locals 5

    iget-object v0, p0, Lcom/appodeal/ads/z1;->a:Lcom/appodeal/ads/RestrictedData;

    invoke-interface {v0}, Lcom/appodeal/ads/RestrictedData;->canSendLocation()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/appodeal/ads/z1;->obtainLatitude()Ljava/lang/Float;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/appodeal/ads/z1;->obtainLongitude()Ljava/lang/Float;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Landroid/location/Location;

    const-string v3, "unknown"

    invoke-direct {v2, v3}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    float-to-double v3, v0

    invoke-virtual {v2, v3, v4}, Landroid/location/Location;->setLatitude(D)V

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    float-to-double v0, v0

    invoke-virtual {v2, v0, v1}, Landroid/location/Location;->setLongitude(D)V

    return-object v2

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final obtainLongitude()Ljava/lang/Float;
    .locals 2

    iget-object v0, p0, Lcom/appodeal/ads/z1;->a:Lcom/appodeal/ads/RestrictedData;

    invoke-interface {v0}, Lcom/appodeal/ads/RestrictedData;->canSendLocation()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/appodeal/ads/z1;->b:Landroid/location/Location;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->floatValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {}, Lcom/appodeal/ads/l5;->a()Lcom/appodeal/ads/l5;

    move-result-object v0

    .line 1
    iget-object v0, v0, Lcom/appodeal/ads/l5;->i:Ljava/lang/Float;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

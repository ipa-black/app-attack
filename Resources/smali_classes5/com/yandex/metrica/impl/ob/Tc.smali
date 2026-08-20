.class Lcom/yandex/metrica/impl/ob/Tc;
.super Lcom/yandex/metrica/impl/ob/Dc;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yandex/metrica/impl/ob/Dc<",
        "Lcom/yandex/metrica/impl/ob/Xb;",
        ">;"
    }
.end annotation


# instance fields
.field private final f:Landroid/location/LocationManager;

.field private final g:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/os/Looper;Landroid/location/LocationManager;Lcom/yandex/metrica/impl/ob/zd;Ljava/lang/String;Landroid/location/LocationListener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p6, p4, p2}, Lcom/yandex/metrica/impl/ob/Dc;-><init>(Landroid/content/Context;Landroid/location/LocationListener;Lcom/yandex/metrica/impl/ob/zd;Landroid/os/Looper;)V

    .line 2
    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/Tc;->f:Landroid/location/LocationManager;

    .line 3
    iput-object p5, p0, Lcom/yandex/metrica/impl/ob/Tc;->g:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/yandex/metrica/impl/ob/Tc;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/metrica/impl/ob/Tc;->g:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Tc;->f:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    .line 5
    :try_start_0
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Dc;->c:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Z
    .locals 0

    .line 2
    check-cast p1, Lcom/yandex/metrica/impl/ob/Xb;

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/Tc;->c()Z

    move-result p1

    return p1
.end method

.method public b()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Dc;->b:Lcom/yandex/metrica/impl/ob/zd;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Dc;->a:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/yandex/metrica/impl/ob/zd;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Tc;->f:Landroid/location/LocationManager;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getting last known location for provider "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/Tc;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    invoke-static {p0}, Lcom/yandex/metrica/impl/ob/Tc;->a(Lcom/yandex/metrica/impl/ob/Tc;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    :cond_0
    const/4 v0, 0x0

    .line 4
    :goto_0
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Dc;->c:Landroid/location/LocationListener;

    invoke-interface {v1, v0}, Landroid/location/LocationListener;->onLocationChanged(Landroid/location/Location;)V

    :cond_1
    return-void
.end method

.method public c()Z
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Dc;->b:Lcom/yandex/metrica/impl/ob/zd;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Dc;->a:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/yandex/metrica/impl/ob/zd;->a(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/Tc;->g:Ljava/lang/String;

    sget-wide v4, Lcom/yandex/metrica/impl/ob/Dc;->e:J

    iget-object v7, p0, Lcom/yandex/metrica/impl/ob/Dc;->c:Landroid/location/LocationListener;

    iget-object v8, p0, Lcom/yandex/metrica/impl/ob/Dc;->d:Landroid/os/Looper;

    .line 4
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/Tc;->f:Landroid/location/LocationManager;

    if-eqz v2, :cond_0

    const/4 v6, 0x0

    .line 6
    :try_start_0
    invoke-virtual/range {v2 .. v8}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    :catchall_0
    :cond_0
    return v1
.end method

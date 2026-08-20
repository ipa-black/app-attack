.class public final Lcom/appnext/base/services/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static b(Lcom/appnext/base/operations/a$a;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 49
    :try_start_0
    invoke-interface {p0}, Lcom/appnext/base/operations/a$a;->aH()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    :catchall_0
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/Object;Lcom/appnext/base/operations/a$a;)V
    .locals 6

    .line 22
    :try_start_0
    invoke-static {}, Lcom/appnext/base/b/i;->aR()Lcom/appnext/base/b/i;

    move-result-object p3

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/appnext/base/b/i;->init(Landroid/content/Context;)V

    .line 23
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Lcom/appnext/base/b/e;->init(Landroid/content/Context;)V

    .line 25
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 1250
    invoke-static {p1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1251
    invoke-virtual {p1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->isLimitAdTrackingEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 26
    invoke-static {}, Lcom/appnext/base/b/i;->aR()Lcom/appnext/base/b/i;

    move-result-object p1

    const-string p2, "lat"

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p3}, Lcom/appnext/base/b/i;->putBoolean(Ljava/lang/String;Z)V

    .line 27
    invoke-static {p6}, Lcom/appnext/base/services/b;->b(Lcom/appnext/base/operations/a$a;)V

    return-void

    .line 31
    :cond_0
    invoke-static {}, Lcom/appnext/base/a/a;->X()Lcom/appnext/base/a/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/appnext/base/a/a;->ab()Lcom/appnext/base/a/c/c;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/appnext/base/a/c/c;->t(Ljava/lang/String;)Lcom/appnext/base/a/b/c;

    move-result-object v2

    if-nez v2, :cond_1

    .line 35
    invoke-static {p6}, Lcom/appnext/base/services/b;->b(Lcom/appnext/base/operations/a$a;)V

    return-void

    .line 39
    :cond_1
    invoke-static {}, Lcom/appnext/base/operations/b;->aI()Lcom/appnext/base/operations/b;

    move-result-object v0

    invoke-virtual {v2}, Lcom/appnext/base/a/b/c;->getKey()Ljava/lang/String;

    move-result-object v1

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/appnext/base/operations/b;->a(Ljava/lang/String;Lcom/appnext/base/a/b/c;Landroid/os/Bundle;Ljava/lang/Object;Lcom/appnext/base/operations/a$a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 41
    :catchall_0
    invoke-static {p6}, Lcom/appnext/base/services/b;->b(Lcom/appnext/base/operations/a$a;)V

    return-void
.end method

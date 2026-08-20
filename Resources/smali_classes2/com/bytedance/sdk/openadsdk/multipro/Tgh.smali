.class public Lcom/bytedance/sdk/openadsdk/multipro/Tgh;
.super Ljava/lang/Object;
.source "TTProviderManager.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/multipro/Qhi;


# static fields
.field private static volatile Qhi:Lcom/bytedance/sdk/openadsdk/multipro/Tgh;

.field private static final ac:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/multipro/Qhi;",
            ">;"
        }
    .end annotation
.end field

.field private static cJ:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 37
    sput-object v0, Lcom/bytedance/sdk/openadsdk/multipro/Tgh;->ac:Ljava/util/List;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/multipro/CJ/fl;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/multipro/CJ/fl;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    new-instance v1, Lcom/bytedance/sdk/openadsdk/multipro/Qhi/cJ;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/multipro/Qhi/cJ;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    new-instance v1, Lcom/bytedance/sdk/openadsdk/multipro/ac/Qhi;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/multipro/ac/Qhi;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    new-instance v1, Lcom/bytedance/sdk/openadsdk/cJ/Qhi/Tgh;

    new-instance v2, Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/cJ/cJ;

    invoke-direct {v2}, Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/cJ/cJ;-><init>()V

    invoke-direct {v1, v2}, Lcom/bytedance/sdk/openadsdk/cJ/Qhi/Tgh;-><init>(Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/cJ/cJ;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Qhi(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/multipro/Tgh;
    .locals 1

    if-eqz p0, :cond_0

    .line 51
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/multipro/Tgh;->cJ:Ljava/lang/ref/WeakReference;

    .line 54
    :cond_0
    sget-object p0, Lcom/bytedance/sdk/openadsdk/multipro/Tgh;->Qhi:Lcom/bytedance/sdk/openadsdk/multipro/Tgh;

    if-nez p0, :cond_2

    .line 55
    const-class p0, Lcom/bytedance/sdk/openadsdk/multipro/Tgh;

    monitor-enter p0

    .line 56
    :try_start_0
    sget-object v0, Lcom/bytedance/sdk/openadsdk/multipro/Tgh;->Qhi:Lcom/bytedance/sdk/openadsdk/multipro/Tgh;

    if-nez v0, :cond_1

    .line 57
    new-instance v0, Lcom/bytedance/sdk/openadsdk/multipro/Tgh;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/multipro/Tgh;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/multipro/Tgh;->Qhi:Lcom/bytedance/sdk/openadsdk/multipro/Tgh;

    .line 59
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 61
    :cond_2
    :goto_0
    sget-object p0, Lcom/bytedance/sdk/openadsdk/multipro/Tgh;->Qhi:Lcom/bytedance/sdk/openadsdk/multipro/Tgh;

    return-object p0
.end method

.method private ac(Landroid/net/Uri;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method private cJ(Landroid/net/Uri;)Lcom/bytedance/sdk/openadsdk/multipro/Qhi;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 72
    :cond_0
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/multipro/Tgh;->ac(Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    .line 77
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 79
    array-length v1, p1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_2

    return-object v0

    :cond_2
    const/4 v1, 0x1

    .line 84
    aget-object p1, p1, v1

    .line 85
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    return-object v0

    .line 90
    :cond_3
    sget-object v1, Lcom/bytedance/sdk/openadsdk/multipro/Tgh;->ac:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/sdk/openadsdk/multipro/Qhi;

    .line 91
    invoke-interface {v2}, Lcom/bytedance/sdk/openadsdk/multipro/Qhi;->Qhi()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    return-object v2

    :cond_5
    return-object v0
.end method


# virtual methods
.method public Qhi(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    .line 198
    :try_start_0
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/multipro/Tgh;->cJ(Landroid/net/Uri;)Lcom/bytedance/sdk/openadsdk/multipro/Qhi;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 200
    invoke-interface {v1, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/multipro/Qhi;->Qhi(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, p1

    :catchall_0
    :cond_0
    return v0
.end method

.method public Qhi(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    .line 183
    :try_start_0
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/multipro/Tgh;->cJ(Landroid/net/Uri;)Lcom/bytedance/sdk/openadsdk/multipro/Qhi;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 185
    invoke-interface {v1, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/multipro/Qhi;->Qhi(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, p1

    :catchall_0
    :cond_0
    return v0
.end method

.method public Qhi(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7

    const/4 v0, 0x0

    .line 138
    :try_start_0
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/multipro/Tgh;->cJ(Landroid/net/Uri;)Lcom/bytedance/sdk/openadsdk/multipro/Qhi;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 140
    invoke-interface/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/multipro/Qhi;->Qhi(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, p1

    :catchall_0
    :cond_0
    return-object v0
.end method

.method public Qhi(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 2

    const/4 v0, 0x0

    .line 168
    :try_start_0
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/multipro/Tgh;->cJ(Landroid/net/Uri;)Lcom/bytedance/sdk/openadsdk/multipro/Qhi;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 170
    invoke-interface {v1, p1, p2}, Lcom/bytedance/sdk/openadsdk/multipro/Qhi;->Qhi(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, p1

    :catchall_0
    :cond_0
    return-object v0
.end method

.method public Qhi()Ljava/lang/String;
    .locals 1

    .line 125
    const-string v0, ""

    return-object v0
.end method

.method public Qhi(Landroid/net/Uri;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    .line 153
    :try_start_0
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/multipro/Tgh;->cJ(Landroid/net/Uri;)Lcom/bytedance/sdk/openadsdk/multipro/Qhi;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 155
    invoke-interface {v1, p1}, Lcom/bytedance/sdk/openadsdk/multipro/Qhi;->Qhi(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, p1

    :catchall_0
    :cond_0
    return-object v0
.end method

.class public Lcom/criteo/publisher/context/a;
.super Ljava/lang/Object;
.source "ConnectionTypeFetcher.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/criteo/publisher/context/a$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/criteo/publisher/logging/g;

.field private final b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/criteo/publisher/context/a;->b:Landroid/content/Context;

    .line 38
    const-class p1, Lcom/criteo/publisher/context/a;

    invoke-static {p1}, Lcom/criteo/publisher/logging/h;->b(Ljava/lang/Class;)Lcom/criteo/publisher/logging/g;

    move-result-object p1

    const-string v0, "LoggerFactory.getLogger(\u2026nTypeFetcher::class.java)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/criteo/publisher/context/a;->a:Lcom/criteo/publisher/logging/g;

    return-void
.end method

.method private a(I)Lcom/criteo/publisher/context/a$a;
    .locals 0

    packed-switch p1, :pswitch_data_0

    .line 147
    sget-object p1, Lcom/criteo/publisher/context/a$a;->d:Lcom/criteo/publisher/context/a$a;

    goto :goto_0

    .line 146
    :pswitch_0
    sget-object p1, Lcom/criteo/publisher/context/a$a;->h:Lcom/criteo/publisher/context/a$a;

    goto :goto_0

    .line 145
    :pswitch_1
    sget-object p1, Lcom/criteo/publisher/context/a$a;->g:Lcom/criteo/publisher/context/a$a;

    goto :goto_0

    .line 141
    :pswitch_2
    sget-object p1, Lcom/criteo/publisher/context/a$a;->f:Lcom/criteo/publisher/context/a$a;

    goto :goto_0

    .line 130
    :pswitch_3
    sget-object p1, Lcom/criteo/publisher/context/a$a;->e:Lcom/criteo/publisher/context/a$a;

    :goto_0
    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private a(Landroid/net/ConnectivityManager;)Lcom/criteo/publisher/context/a$a;
    .locals 4

    .line 91
    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 92
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-nez v1, :cond_1

    goto :goto_1

    .line 93
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x9

    if-ne v2, v3, :cond_2

    sget-object v0, Lcom/criteo/publisher/context/a$a;->b:Lcom/criteo/publisher/context/a$a;

    goto :goto_3

    :cond_2
    :goto_1
    if-nez v1, :cond_3

    goto :goto_2

    .line 94
    :cond_3
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    sget-object v0, Lcom/criteo/publisher/context/a$a;->c:Lcom/criteo/publisher/context/a$a;

    goto :goto_3

    :cond_4
    :goto_2
    if-nez v1, :cond_5

    goto :goto_3

    .line 95
    :cond_5
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/criteo/publisher/context/a;->a(I)Lcom/criteo/publisher/context/a$a;

    move-result-object v0

    :cond_6
    :goto_3
    return-object v0
.end method

.method private a()Z
    .locals 2

    .line 115
    iget-object v0, p0, Lcom/criteo/publisher/context/a;->b:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private b(Landroid/net/ConnectivityManager;)Lcom/criteo/publisher/context/a$a;
    .locals 2

    .line 56
    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v0

    .line 57
    invoke-virtual {p1, v0}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    goto :goto_1

    .line 61
    :cond_0
    invoke-virtual {p0, p1}, Lcom/criteo/publisher/context/a;->c(Landroid/net/NetworkCapabilities;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v0, Lcom/criteo/publisher/context/a$a;->b:Lcom/criteo/publisher/context/a$a;

    goto :goto_1

    .line 62
    :cond_1
    invoke-virtual {p0, p1}, Lcom/criteo/publisher/context/a;->b(Landroid/net/NetworkCapabilities;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v0, Lcom/criteo/publisher/context/a$a;->c:Lcom/criteo/publisher/context/a$a;

    goto :goto_1

    .line 63
    :cond_2
    invoke-virtual {p0, p1}, Lcom/criteo/publisher/context/a;->a(Landroid/net/NetworkCapabilities;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 64
    iget-object p1, p0, Lcom/criteo/publisher/context/a;->b:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    instance-of v1, p1, Landroid/telephony/TelephonyManager;

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    move-object v0, p1

    :goto_0
    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 65
    invoke-virtual {p0, v0}, Lcom/criteo/publisher/context/a;->a(Landroid/telephony/TelephonyManager;)Lcom/criteo/publisher/context/a$a;

    move-result-object v0

    :cond_4
    :goto_1
    return-object v0
.end method


# virtual methods
.method public a(Landroid/telephony/TelephonyManager;)Lcom/criteo/publisher/context/a$a;
    .locals 1

    if-eqz p1, :cond_1

    .line 104
    invoke-direct {p0}, Lcom/criteo/publisher/context/a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 108
    :cond_0
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getDataNetworkType()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/criteo/publisher/context/a;->a(I)Lcom/criteo/publisher/context/a$a;

    move-result-object p1

    goto :goto_1

    .line 106
    :cond_1
    :goto_0
    sget-object p1, Lcom/criteo/publisher/context/a$a;->d:Lcom/criteo/publisher/context/a$a;

    :goto_1
    return-object p1
.end method

.method public a(Landroid/net/NetworkCapabilities;)Z
    .locals 1

    const-string v0, "networkCapabilities"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 86
    invoke-virtual {p1, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result p1

    return p1
.end method

.method public b()Lcom/criteo/publisher/context/a$a;
    .locals 4

    .line 42
    iget-object v0, p0, Lcom/criteo/publisher/context/a;->b:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Landroid/net/ConnectivityManager;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v0, v2

    :cond_0
    check-cast v0, Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_1

    .line 47
    :try_start_0
    invoke-direct {p0, v0}, Lcom/criteo/publisher/context/a;->a(Landroid/net/ConnectivityManager;)Lcom/criteo/publisher/context/a$a;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 49
    iget-object v2, p0, Lcom/criteo/publisher/context/a;->a:Lcom/criteo/publisher/logging/g;

    const-string v3, "Deprecated way to get connection type is not available, fallback on new API"

    invoke-virtual {v2, v3, v1}, Lcom/criteo/publisher/logging/g;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 50
    invoke-direct {p0, v0}, Lcom/criteo/publisher/context/a;->b(Landroid/net/ConnectivityManager;)Lcom/criteo/publisher/context/a$a;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    return-object v2
.end method

.method public b(Landroid/net/NetworkCapabilities;)Z
    .locals 1

    const-string v0, "networkCapabilities"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 80
    invoke-virtual {p1, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result p1

    return p1
.end method

.method public c(Landroid/net/NetworkCapabilities;)Z
    .locals 1

    const-string v0, "networkCapabilities"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x3

    .line 74
    invoke-virtual {p1, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result p1

    return p1
.end method

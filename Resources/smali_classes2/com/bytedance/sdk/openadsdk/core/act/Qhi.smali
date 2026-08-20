.class public Lcom/bytedance/sdk/openadsdk/core/act/Qhi;
.super Ljava/lang/Object;
.source "ActHelper.java"


# static fields
.field private static volatile CJ:Z = false

.field private static Qhi:Ljava/lang/String; = null

.field private static Tgh:Lcom/bytedance/sdk/openadsdk/core/act/ActServiceConnection; = null

.field private static ac:I = -0x1

.field private static cJ:I = -0x1

.field private static fl:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic CJ(I)I
    .locals 0

    .line 28
    sput p0, Lcom/bytedance/sdk/openadsdk/core/act/Qhi;->ac:I

    return p0
.end method

.method static synthetic CJ()Lcom/bytedance/sdk/openadsdk/core/act/ActServiceConnection;
    .locals 1

    .line 28
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/act/Qhi;->Tgh:Lcom/bytedance/sdk/openadsdk/core/act/ActServiceConnection;

    return-object v0
.end method

.method public static Qhi()I
    .locals 2

    .line 204
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/act/Qhi;->fl:Ljava/lang/Boolean;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 207
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/openadsdk/core/act/ActServiceConnection;)Lcom/bytedance/sdk/openadsdk/core/act/ActServiceConnection;
    .locals 0

    .line 28
    sput-object p0, Lcom/bytedance/sdk/openadsdk/core/act/Qhi;->Tgh:Lcom/bytedance/sdk/openadsdk/core/act/ActServiceConnection;

    return-object p0
.end method

.method static synthetic Qhi(Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    .line 28
    sput-object p0, Lcom/bytedance/sdk/openadsdk/core/act/Qhi;->fl:Ljava/lang/Boolean;

    return-object p0
.end method

.method public static Qhi(Landroid/content/Context;)Ljava/lang/String;
    .locals 10

    .line 55
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/act/Qhi;->Qhi:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 57
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 59
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    const-string v3, "http://www.example.com"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/4 v2, 0x0

    .line 60
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 63
    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    goto :goto_0

    :cond_1
    move-object v3, v4

    .line 67
    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    .line 68
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 69
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    .line 70
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 71
    const-string v9, "android.support.customtabs.action.CustomTabsService"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 72
    iget-object v9, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 73
    invoke-virtual {v0, v8, v2}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 74
    iget-object v7, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 80
    :cond_3
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 81
    sput-object v4, Lcom/bytedance/sdk/openadsdk/core/act/Qhi;->Qhi:Ljava/lang/String;

    goto :goto_2

    .line 82
    :cond_4
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 83
    invoke-static {p0, v1}, Lcom/bytedance/sdk/openadsdk/core/act/Qhi;->Qhi(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 84
    invoke-interface {v6, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 85
    sput-object v3, Lcom/bytedance/sdk/openadsdk/core/act/Qhi;->Qhi:Ljava/lang/String;

    goto :goto_2

    .line 88
    :cond_5
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/act/Qhi;->Qhi:Ljava/lang/String;

    .line 91
    :goto_2
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/act/Qhi;->Qhi:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 93
    const-class v0, Lcom/bytedance/sdk/openadsdk/core/act/Qhi;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 94
    :try_start_1
    sget-boolean v1, Lcom/bytedance/sdk/openadsdk/core/act/Qhi;->CJ:Z

    if-nez v1, :cond_7

    .line 95
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/act/Qhi$1;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/act/Qhi$1;-><init>(Landroid/content/Context;)V

    .line 162
    sget-object v2, Lcom/bytedance/sdk/openadsdk/core/act/Qhi;->Tgh:Lcom/bytedance/sdk/openadsdk/core/act/ActServiceConnection;

    if-nez v2, :cond_6

    .line 163
    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/act/ActServiceConnection;

    invoke-direct {v2, v1}, Lcom/bytedance/sdk/openadsdk/core/act/ActServiceConnection;-><init>(Lcom/bytedance/sdk/openadsdk/core/act/cJ;)V

    sput-object v2, Lcom/bytedance/sdk/openadsdk/core/act/Qhi;->Tgh:Lcom/bytedance/sdk/openadsdk/core/act/ActServiceConnection;

    .line 165
    :cond_6
    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/act/Qhi;->Qhi:Ljava/lang/String;

    sget-object v2, Lcom/bytedance/sdk/openadsdk/core/act/Qhi;->Tgh:Lcom/bytedance/sdk/openadsdk/core/act/ActServiceConnection;

    invoke-static {p0, v1, v2}, Landroidx/browser/customtabs/CustomTabsClient;->bindCustomTabsService(Landroid/content/Context;Ljava/lang/String;Landroidx/browser/customtabs/CustomTabsServiceConnection;)Z

    const/4 p0, 0x1

    .line 166
    sput-boolean p0, Lcom/bytedance/sdk/openadsdk/core/act/Qhi;->CJ:Z

    .line 168
    :cond_7
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v0

    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p0

    .line 171
    const-string v0, "CustomTabsHelper"

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    :cond_8
    :goto_3
    sget-object p0, Lcom/bytedance/sdk/openadsdk/core/act/Qhi;->Qhi:Ljava/lang/String;

    return-object p0
.end method

.method public static Qhi(I)V
    .locals 0

    .line 237
    sput p0, Lcom/bytedance/sdk/openadsdk/core/act/Qhi;->cJ:I

    return-void
.end method

.method private static Qhi(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 3

    const/4 v0, 0x0

    .line 178
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v1, 0x40

    .line 179
    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    .line 182
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_0

    return v0

    .line 185
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ResolveInfo;

    .line 186
    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    if-eqz v1, :cond_1

    .line 188
    invoke-virtual {v1}, Landroid/content/IntentFilter;->countDataAuthorities()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Landroid/content/IntentFilter;->countDataPaths()I

    move-result v1

    if-eqz v1, :cond_1

    .line 189
    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_1

    const/4 p0, 0x1

    return p0

    .line 193
    :catch_0
    const-string p0, "CustomTabsHelper"

    const-string p1, "Runtime exception while getting specialized handlers"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v0
.end method

.method public static ac()I
    .locals 1

    .line 233
    sget v0, Lcom/bytedance/sdk/openadsdk/core/act/Qhi;->ac:I

    return v0
.end method

.method static synthetic ac(I)I
    .locals 0

    .line 28
    sput p0, Lcom/bytedance/sdk/openadsdk/core/act/Qhi;->cJ:I

    return p0
.end method

.method public static cJ()I
    .locals 1

    .line 229
    sget v0, Lcom/bytedance/sdk/openadsdk/core/act/Qhi;->cJ:I

    return v0
.end method

.method public static cJ(Landroid/content/Context;)I
    .locals 1

    const/4 v0, 0x0

    .line 218
    :try_start_0
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/act/Qhi;->Qhi(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 219
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :catchall_0
    :cond_0
    return v0
.end method

.method public static cJ(I)V
    .locals 0

    .line 241
    sput p0, Lcom/bytedance/sdk/openadsdk/core/act/Qhi;->ac:I

    return-void
.end method

.method static synthetic fl()Z
    .locals 1

    .line 28
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/core/act/Qhi;->CJ:Z

    return v0
.end method

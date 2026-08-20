.class public Lcom/appsgeyser/sdk/datasdk/PermissionsRequester;
.super Ljava/lang/Object;
.source "PermissionsRequester.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PermissionsTag"

.field private static final oneAudiencePermissions:[Ljava/lang/String;

.field private static final predicioPermissions:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    .line 35
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "android.permission.GET_ACCOUNTS"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sput-object v1, Lcom/appsgeyser/sdk/datasdk/PermissionsRequester;->oneAudiencePermissions:[Ljava/lang/String;

    .line 39
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    aput-object v1, v0, v3

    sput-object v0, Lcom/appsgeyser/sdk/datasdk/PermissionsRequester;->predicioPermissions:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static delayedAskPermission(Ljava/util/HashSet;Landroid/app/Activity;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/app/Activity;",
            "I)V"
        }
    .end annotation

    .line 153
    new-instance v0, Lcom/appsgeyser/sdk/datasdk/PermissionsRequester$1;

    invoke-direct {v0, p1, p0, p2}, Lcom/appsgeyser/sdk/datasdk/PermissionsRequester$1;-><init>(Landroid/app/Activity;Ljava/util/HashSet;I)V

    .line 173
    invoke-virtual {v0}, Lcom/appsgeyser/sdk/datasdk/PermissionsRequester$1;->start()V

    return-void
.end method

.method private static getNeedRequestPermissions(Landroid/app/Activity;Ljava/util/Set;)[Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 96
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 98
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 99
    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 101
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 105
    :cond_1
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result p0

    if-lez p0, :cond_2

    .line 106
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    invoke-interface {v0, p0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getPermissionRequiredFromConfig(Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 114
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    return-object p0
.end method

.method private static isPermissionGranted(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 1

    .line 178
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static isPermissionsRequired(Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;Landroid/content/Context;)Z
    .locals 4

    .line 51
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 54
    invoke-static {p0}, Lcom/appsgeyser/sdk/datasdk/PermissionsRequester;->getPermissionRequiredFromConfig(Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;)Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 55
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 57
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 61
    :cond_1
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result p0

    if-lez p0, :cond_2

    const/4 p0, 0x1

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method static synthetic lambda$requestNotificationPermissions$0(Landroid/app/Activity;Ljava/util/HashSet;Ljava/lang/String;)V
    .locals 0

    .line 141
    invoke-static {p2, p0}, Lcom/appsgeyser/sdk/datasdk/PermissionsRequester;->isPermissionGranted(Ljava/lang/String;Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 142
    invoke-virtual {p1, p2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method static requestAllActiveByDefaultPermissions(Landroid/app/Activity;Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;I)V
    .locals 1

    .line 68
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 70
    invoke-static {p0, p1}, Lcom/appsgeyser/sdk/datasdk/PermissionsRequester;->getNeedRequestPermissions(Landroid/app/Activity;Ljava/util/Set;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 73
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 75
    new-array p2, p1, [Ljava/lang/String;

    new-array p1, p1, [I

    const/16 v0, 0x4e

    invoke-virtual {p0, v0, p2, p1}, Landroid/app/Activity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    :goto_0
    return-void
.end method

.method static requestAllActivePermissions(Landroid/app/Activity;Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;I)V
    .locals 1

    .line 83
    invoke-static {p1}, Lcom/appsgeyser/sdk/datasdk/PermissionsRequester;->getPermissionRequiredFromConfig(Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;)Ljava/util/Set;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/appsgeyser/sdk/datasdk/PermissionsRequester;->getNeedRequestPermissions(Landroid/app/Activity;Ljava/util/Set;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 86
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 88
    new-array p2, p1, [Ljava/lang/String;

    new-array p1, p1, [I

    const/16 v0, 0x4e

    invoke-virtual {p0, v0, p2, p1}, Landroid/app/Activity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    :goto_0
    return-void
.end method

.method public static requestNotificationPermissions(Landroid/app/Activity;I)V
    .locals 6

    .line 129
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-ge v0, v1, :cond_0

    return-void

    .line 132
    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 133
    new-instance v2, Lcom/appsgeyser/sdk/configuration/PreferencesCoder;

    invoke-direct {v2, p0}, Lcom/appsgeyser/sdk/configuration/PreferencesCoder;-><init>(Landroid/content/Context;)V

    const-string v3, "NotificationPermRequestDate"

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/appsgeyser/sdk/configuration/PreferencesCoder;->getPrefLong(Ljava/lang/String;J)J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-double v0, v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x404e000000000000L    # 60.0

    div-double/2addr v0, v2

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x4038000000000000L    # 24.0

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_1

    return-void

    .line 137
    :cond_1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 138
    const-string v1, "android.permission.POST_NOTIFICATIONS"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 140
    new-instance v1, Lcom/appsgeyser/sdk/datasdk/PermissionsRequester$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0}, Lcom/appsgeyser/sdk/datasdk/PermissionsRequester$$ExternalSyntheticLambda0;-><init>(Landroid/app/Activity;Ljava/util/HashSet;)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->forEach(Ljava/util/function/Consumer;)V

    .line 144
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v1

    if-nez v1, :cond_2

    return-void

    .line 145
    :cond_2
    invoke-static {v0, p0, p1}, Lcom/appsgeyser/sdk/datasdk/PermissionsRequester;->delayedAskPermission(Ljava/util/HashSet;Landroid/app/Activity;I)V

    return-void
.end method

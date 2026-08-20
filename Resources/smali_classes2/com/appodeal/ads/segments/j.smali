.class public final Lcom/appodeal/ads/segments/j;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appodeal/ads/segments/j$c;,
        Lcom/appodeal/ads/segments/j$b;,
        Lcom/appodeal/ads/segments/j$a;
    }
.end annotation


# static fields
.field public static c:Lcom/appodeal/ads/segments/j;

.field public static final d:Ljava/util/HashMap;

.field public static final e:Ljava/util/ArrayList;

.field public static final f:Lcom/appodeal/ads/storage/o;

.field public static g:Ljava/util/HashMap;


# instance fields
.field public a:F

.field public b:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/appodeal/ads/segments/j;->d:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/appodeal/ads/segments/j;->e:Ljava/util/ArrayList;

    sget-object v0, Lcom/appodeal/ads/storage/o;->b:Lcom/appodeal/ads/storage/o;

    sput-object v0, Lcom/appodeal/ads/segments/j;->f:Lcom/appodeal/ads/storage/o;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/appodeal/ads/segments/j;->g:Ljava/util/HashMap;

    new-instance v2, Lcom/appodeal/ads/segments/j$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/appodeal/ads/segments/j$$ExternalSyntheticLambda0;-><init>()V

    const-string v3, "country"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/appodeal/ads/segments/j;->g:Ljava/util/HashMap;

    new-instance v2, Lcom/appodeal/ads/segments/j$$ExternalSyntheticLambda7;

    invoke-direct {v2}, Lcom/appodeal/ads/segments/j$$ExternalSyntheticLambda7;-><init>()V

    const-string v3, "app_version"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/appodeal/ads/segments/j;->g:Ljava/util/HashMap;

    new-instance v2, Lcom/appodeal/ads/segments/j$$ExternalSyntheticLambda8;

    invoke-direct {v2}, Lcom/appodeal/ads/segments/j$$ExternalSyntheticLambda8;-><init>()V

    const-string v3, "app"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/appodeal/ads/segments/j;->g:Ljava/util/HashMap;

    new-instance v2, Lcom/appodeal/ads/segments/j$$ExternalSyntheticLambda9;

    invoke-direct {v2}, Lcom/appodeal/ads/segments/j$$ExternalSyntheticLambda9;-><init>()V

    const-string v3, "sdk_version"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/appodeal/ads/segments/j;->g:Ljava/util/HashMap;

    new-instance v2, Lcom/appodeal/ads/segments/j$$ExternalSyntheticLambda10;

    invoke-direct {v2}, Lcom/appodeal/ads/segments/j$$ExternalSyntheticLambda10;-><init>()V

    const-string v3, "os_version"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/appodeal/ads/segments/j;->g:Ljava/util/HashMap;

    new-instance v2, Lcom/appodeal/ads/segments/j$$ExternalSyntheticLambda11;

    invoke-direct {v2}, Lcom/appodeal/ads/segments/j$$ExternalSyntheticLambda11;-><init>()V

    const-string v3, "session_count"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/appodeal/ads/segments/j;->g:Ljava/util/HashMap;

    new-instance v2, Lcom/appodeal/ads/segments/j$$ExternalSyntheticLambda12;

    invoke-direct {v2}, Lcom/appodeal/ads/segments/j$$ExternalSyntheticLambda12;-><init>()V

    const-string v3, "average_session_length"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/appodeal/ads/segments/j;->g:Ljava/util/HashMap;

    new-instance v2, Lcom/appodeal/ads/segments/j$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lcom/appodeal/ads/segments/j$$ExternalSyntheticLambda1;-><init>()V

    const-string v3, "connection_type"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/appodeal/ads/segments/j;->g:Ljava/util/HashMap;

    new-instance v2, Lcom/appodeal/ads/segments/j$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Lcom/appodeal/ads/segments/j$$ExternalSyntheticLambda2;-><init>()V

    const-string v3, "gender"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/appodeal/ads/segments/j;->g:Ljava/util/HashMap;

    new-instance v2, Lcom/appodeal/ads/segments/j$$ExternalSyntheticLambda3;

    invoke-direct {v2}, Lcom/appodeal/ads/segments/j$$ExternalSyntheticLambda3;-><init>()V

    const-string v3, "age"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/appodeal/ads/segments/j;->g:Ljava/util/HashMap;

    new-instance v2, Lcom/appodeal/ads/segments/j$$ExternalSyntheticLambda4;

    invoke-direct {v2}, Lcom/appodeal/ads/segments/j$$ExternalSyntheticLambda4;-><init>()V

    const-string v3, "bought_inapps"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/appodeal/ads/segments/j;->g:Ljava/util/HashMap;

    new-instance v2, Lcom/appodeal/ads/segments/j$$ExternalSyntheticLambda5;

    invoke-direct {v2}, Lcom/appodeal/ads/segments/j$$ExternalSyntheticLambda5;-><init>()V

    const-string v3, "inapp_amount"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/appodeal/ads/segments/j;->g:Ljava/util/HashMap;

    new-instance v2, Lcom/appodeal/ads/segments/j$$ExternalSyntheticLambda6;

    invoke-direct {v2}, Lcom/appodeal/ads/segments/j$$ExternalSyntheticLambda6;-><init>()V

    const-string v3, "device_type"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/appodeal/ads/segments/j;->g:Ljava/util/HashMap;

    new-instance v2, Lcom/appodeal/ads/segments/j$c;

    invoke-direct {v2}, Lcom/appodeal/ads/segments/j$c;-><init>()V

    const-string v3, "session_time"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/appodeal/ads/segments/j;->g:Ljava/util/HashMap;

    new-instance v2, Lcom/appodeal/ads/segments/f;

    invoke-direct {v2, v0}, Lcom/appodeal/ads/segments/f;-><init>(Lcom/appodeal/ads/storage/o;)V

    const-string v0, "part_of_audience"

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/appodeal/ads/segments/j;->a:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/appodeal/ads/segments/j;->b:Z

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/appodeal/ads/segments/j;)Ljava/lang/Object;
    .locals 0

    .line 4
    invoke-static {}, Lcom/appodeal/ads/l5;->a()Lcom/appodeal/ads/l5;

    move-result-object p0

    .line 5
    iget-object p0, p0, Lcom/appodeal/ads/l5;->f:Ljava/lang/String;

    return-object p0
.end method

.method public static a()Ljava/util/HashMap;
    .locals 1

    sget-object v0, Lcom/appodeal/ads/segments/j;->d:Ljava/util/HashMap;

    return-object v0
.end method

.method public static a(Lcom/appodeal/ads/segments/j$a;)V
    .locals 1

    sget-object v0, Lcom/appodeal/ads/segments/j;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    sget-object v0, Lcom/appodeal/ads/segments/j;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    sget-object p0, Lcom/appodeal/ads/segments/j;->e:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/appodeal/ads/segments/j$a;

    invoke-interface {p1}, Lcom/appodeal/ads/segments/j$a;->a()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;I[Lcom/appodeal/ads/segments/i;)Z
    .locals 4

    const/4 v0, 0x1

    if-eqz p0, :cond_9

    if-eqz p1, :cond_9

    if-nez p2, :cond_0

    goto :goto_3

    :cond_0
    if-eqz p1, :cond_8

    sub-int/2addr p1, v0

    const/4 v1, 0x0

    if-eqz p1, :cond_5

    if-eq p1, v0, :cond_1

    return v1

    .line 1
    :cond_1
    array-length p1, p2

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    array-length p1, p2

    move v2, v1

    :goto_0
    if-ge v2, p1, :cond_4

    aget-object v3, p2, v2

    invoke-virtual {v3, p0}, Lcom/appodeal/ads/segments/i;->a(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    move v0, v1

    :goto_1
    return v0

    .line 2
    :cond_5
    array-length p1, p2

    move v2, v1

    :goto_2
    if-ge v2, p1, :cond_7

    aget-object v3, p2, v2

    invoke-virtual {v3, p0}, Lcom/appodeal/ads/segments/i;->a(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_6

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    move v0, v1

    :cond_7
    return v0

    :cond_8
    const/4 p0, 0x0

    .line 3
    throw p0

    :cond_9
    :goto_3
    return v0
.end method

.method public static a(Lorg/json/JSONObject;)[Lcom/appodeal/ads/segments/i;
    .locals 4

    const-string v0, "restrictions"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v0, v0, [Lcom/appodeal/ads/segments/i;

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    :try_start_0
    new-instance v2, Lcom/appodeal/ads/segments/i;

    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/appodeal/ads/segments/i;-><init>(Lorg/json/JSONObject;)V

    aput-object v2, v0, v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    invoke-static {v2}, Lcom/appodeal/ads/utils/Log;->log(Ljava/lang/Throwable;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    :goto_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static b()Lcom/appodeal/ads/segments/j;
    .locals 1

    sget-object v0, Lcom/appodeal/ads/segments/j;->c:Lcom/appodeal/ads/segments/j;

    if-nez v0, :cond_0

    new-instance v0, Lcom/appodeal/ads/segments/j;

    invoke-direct {v0}, Lcom/appodeal/ads/segments/j;-><init>()V

    sput-object v0, Lcom/appodeal/ads/segments/j;->c:Lcom/appodeal/ads/segments/j;

    :cond_0
    sget-object v0, Lcom/appodeal/ads/segments/j;->c:Lcom/appodeal/ads/segments/j;

    return-object v0
.end method

.method public static synthetic b(Landroid/content/Context;Lcom/appodeal/ads/segments/j;)Ljava/lang/Object;
    .locals 2

    new-instance p1, Lcom/appodeal/ads/utils/Version;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-direct {p1, p0}, Lcom/appodeal/ads/utils/Version;-><init>(Ljava/lang/String;)V

    return-object p1
.end method

.method public static c(Landroid/content/Context;Lcom/appodeal/ads/segments/j;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-boolean p0, p1, Lcom/appodeal/ads/segments/j;->b:Z

    .line 2
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static d(Landroid/content/Context;Lcom/appodeal/ads/segments/j;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget p0, p1, Lcom/appodeal/ads/segments/j;->a:F

    .line 2
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Landroid/content/Context;Lcom/appodeal/ads/segments/j;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0}, Lcom/appodeal/ads/f1;->r(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "tablet"

    goto :goto_0

    :cond_0
    const-string p0, "phone"

    :goto_0
    return-object p0
.end method

.method public static f(Landroid/content/Context;Lcom/appodeal/ads/segments/j;)Ljava/lang/Object;
    .locals 0

    sget-object p0, Lcom/appodeal/ads/segments/j;->f:Lcom/appodeal/ads/storage/o;

    .line 1
    iget-object p0, p0, Lcom/appodeal/ads/storage/o;->a:Lcom/appodeal/ads/storage/b;

    .line 2
    invoke-virtual {p0}, Lcom/appodeal/ads/storage/b;->c()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Landroid/content/Context;Lcom/appodeal/ads/segments/j;)Ljava/lang/Object;
    .locals 0

    new-instance p0, Lcom/appodeal/ads/utils/Version;

    sget-object p1, Lcom/appodeal/ads/modules/common/internal/Constants;->SDK_VERSION:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/appodeal/ads/utils/Version;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method public static synthetic h(Landroid/content/Context;Lcom/appodeal/ads/segments/j;)Ljava/lang/Object;
    .locals 0

    new-instance p0, Lcom/appodeal/ads/utils/Version;

    sget-object p1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/appodeal/ads/utils/Version;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method public static synthetic i(Landroid/content/Context;Lcom/appodeal/ads/segments/j;)Ljava/lang/Object;
    .locals 0

    sget-object p0, Lcom/appodeal/ads/utils/x;->l:Ljava/util/HashMap;

    invoke-static {}, Lcom/appodeal/ads/utils/x$a;->a()Lcom/appodeal/ads/utils/x;

    move-result-object p0

    invoke-virtual {p0}, Lcom/appodeal/ads/utils/x;->g()J

    move-result-wide p0

    long-to-int p0, p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic j(Landroid/content/Context;Lcom/appodeal/ads/segments/j;)Ljava/lang/Object;
    .locals 0

    sget-object p0, Lcom/appodeal/ads/utils/x;->l:Ljava/util/HashMap;

    invoke-static {}, Lcom/appodeal/ads/utils/x$a;->a()Lcom/appodeal/ads/utils/x;

    move-result-object p0

    invoke-virtual {p0}, Lcom/appodeal/ads/utils/x;->c()J

    move-result-wide p0

    long-to-int p0, p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic k(Landroid/content/Context;Lcom/appodeal/ads/segments/j;)Ljava/lang/Object;
    .locals 1

    invoke-static {p0}, Lcom/appodeal/ads/f1;->c(Landroid/content/Context;)Lcom/appodeal/ads/modules/common/internal/data/ConnectionData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/appodeal/ads/modules/common/internal/data/ConnectionData;->getType()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string p1, "mobile"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    const-string p1, "wifi"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    return-object p1

    :cond_1
    const-string p0, "other"

    return-object p0
.end method

.method public static synthetic l(Landroid/content/Context;Lcom/appodeal/ads/segments/j;)Ljava/lang/Object;
    .locals 0

    invoke-static {}, Lcom/appodeal/ads/n5;->c()Lcom/appodeal/ads/l5;

    move-result-object p0

    invoke-virtual {p0}, Lcom/appodeal/ads/l5;->getGender()Lcom/appodeal/ads/UserSettings$Gender;

    move-result-object p0

    sget-object p1, Lcom/appodeal/ads/UserSettings$Gender;->FEMALE:Lcom/appodeal/ads/UserSettings$Gender;

    if-ne p0, p1, :cond_0

    const-string p0, "female"

    return-object p0

    :cond_0
    sget-object p1, Lcom/appodeal/ads/UserSettings$Gender;->MALE:Lcom/appodeal/ads/UserSettings$Gender;

    if-ne p0, p1, :cond_1

    const-string p0, "male"

    return-object p0

    :cond_1
    const-string p0, "other"

    return-object p0
.end method

.method public static m(Landroid/content/Context;Lcom/appodeal/ads/segments/j;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {}, Lcom/appodeal/ads/l5;->a()Lcom/appodeal/ads/l5;

    move-result-object p0

    .line 2
    iget-object p0, p0, Lcom/appodeal/ads/l5;->c:Ljava/lang/Integer;

    return-object p0
.end method


# virtual methods
.method public final b(Lorg/json/JSONObject;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const-string v1, "inapp_amount"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-wide/16 v2, 0x0

    invoke-virtual {p1, v1, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v1

    double-to-float p1, v1

    iput p1, p0, Lcom/appodeal/ads/segments/j;->a:F

    const/4 v1, 0x0

    cmpl-float p1, p1, v1

    const/4 v1, 0x1

    if-lez p1, :cond_0

    move v0, v1

    :cond_0
    iput-boolean v0, p0, Lcom/appodeal/ads/segments/j;->b:Z

    return v1

    :cond_1
    return v0
.end method

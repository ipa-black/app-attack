.class public Lcom/appodeal/ads/j4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/appodeal/ads/RestrictedData;


# static fields
.field public static final a:Lcom/appodeal/ads/j4;

.field public static b:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/appodeal/ads/j4;

    invoke-direct {v0}, Lcom/appodeal/ads/j4;-><init>()V

    sput-object v0, Lcom/appodeal/ads/j4;->a:Lcom/appodeal/ads/j4;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final canSendLocation()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/appodeal/ads/i0;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    const-string v0, "lat"

    invoke-virtual {p0, v0}, Lcom/appodeal/ads/j4;->isParameterBlocked(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "lon"

    invoke-virtual {p0, v0}, Lcom/appodeal/ads/j4;->isParameterBlocked(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final canSendLocationType()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/appodeal/ads/i0;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    const-string v0, "lt"

    invoke-virtual {p0, v0}, Lcom/appodeal/ads/j4;->isParameterBlocked(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final canSendUserSettings()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/appodeal/ads/i0;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    const-string v0, "user_settings"

    invoke-virtual {p0, v0}, Lcom/appodeal/ads/j4;->isParameterBlocked(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final getAge()Ljava/lang/Integer;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/appodeal/ads/j4;->canSendUserSettings()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/appodeal/ads/l5;->a()Lcom/appodeal/ads/l5;

    move-result-object v0

    .line 1
    iget-object v0, v0, Lcom/appodeal/ads/l5;->c:Ljava/lang/Integer;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getCity()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/appodeal/ads/j4;->canSendUserSettings()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/appodeal/ads/l5;->a()Lcom/appodeal/ads/l5;

    move-result-object v0

    .line 1
    iget-object v0, v0, Lcom/appodeal/ads/l5;->j:Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getConnectionData(Landroid/content/Context;)Lcom/appodeal/ads/modules/common/internal/data/ConnectionData;
    .locals 0

    invoke-static {p1}, Lcom/appodeal/ads/f1;->c(Landroid/content/Context;)Lcom/appodeal/ads/modules/common/internal/data/ConnectionData;

    move-result-object p1

    return-object p1
.end method

.method public final getCountry()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/appodeal/ads/j4;->canSendUserSettings()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/appodeal/ads/l5;->a()Lcom/appodeal/ads/l5;

    move-result-object v0

    .line 1
    iget-object v0, v0, Lcom/appodeal/ads/l5;->f:Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getGender()Lcom/appodeal/ads/UserSettings$Gender;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/appodeal/ads/j4;->canSendUserSettings()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/appodeal/ads/l5;->a()Lcom/appodeal/ads/l5;

    move-result-object v0

    .line 1
    iget-object v0, v0, Lcom/appodeal/ads/l5;->b:Lcom/appodeal/ads/UserSettings$Gender;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getHttpAgent(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    const-string v0, "; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0"

    const-string v1, "Mozilla/5.0 (Linux; Android "

    invoke-virtual {p0}, Lcom/appodeal/ads/j4;->canSendUserSettings()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_6

    .line 1
    sget-object v2, Lcom/appodeal/ads/j4;->b:Ljava/lang/String;

    if-eqz v2, :cond_0

    move-object v3, v2

    goto/16 :goto_6

    :cond_0
    if-nez p1, :cond_1

    goto/16 :goto_6

    :cond_1
    :try_start_0
    invoke-static {p1}, Landroid/webkit/WebSettings;->getDefaultUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/appodeal/ads/j4;->b:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-static {v2}, Lcom/appodeal/ads/utils/Log;->log(Ljava/lang/Throwable;)V

    :goto_0
    sget-object v2, Lcom/appodeal/ads/j4;->b:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 2
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/appodeal/ads/f1;->a:Ljava/util/HashMap;

    .line 3
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 4
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "; "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 5
    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 6
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " Build/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 7
    sget-object v4, Landroid/os/Build;->ID:Ljava/lang/String;

    .line 8
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    const/4 v1, 0x0

    :try_start_2
    const-string v4, "com.google.android.webview"

    invoke-virtual {v0, v4, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    const-string v5, " Chrome/"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v4

    :try_start_3
    invoke-static {v4}, Lcom/appodeal/ads/utils/Log;->log(Ljava/lang/Throwable;)V

    :goto_1
    const-string v4, " Mobile"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :try_start_4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v5, v4, Landroid/content/pm/ApplicationInfo;->labelRes:I

    if-nez v5, :cond_2

    iget-object p1, v4, Landroid/content/pm/ApplicationInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_2
    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_2
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception p1

    :try_start_5
    invoke-static {p1}, Lcom/appodeal/ads/utils/Log;->log(Ljava/lang/Throwable;)V

    :goto_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_4

    :catchall_3
    move-object p1, v3

    .line 9
    :goto_4
    sput-object p1, Lcom/appodeal/ads/j4;->b:Ljava/lang/String;

    :cond_3
    sget-object p1, Lcom/appodeal/ads/j4;->b:Ljava/lang/String;

    const-string v0, ""

    if-nez p1, :cond_4

    .line 10
    :try_start_6
    const-string p1, "http.agent"

    invoke-static {p1, v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    goto :goto_5

    :catchall_4
    move-exception p1

    invoke-static {p1}, Lcom/appodeal/ads/utils/Log;->log(Ljava/lang/Throwable;)V

    .line 11
    :goto_5
    sput-object v3, Lcom/appodeal/ads/j4;->b:Ljava/lang/String;

    :cond_4
    sget-object p1, Lcom/appodeal/ads/j4;->b:Ljava/lang/String;

    if-nez p1, :cond_5

    sput-object v0, Lcom/appodeal/ads/j4;->b:Ljava/lang/String;

    :cond_5
    sget-object v3, Lcom/appodeal/ads/j4;->b:Ljava/lang/String;

    :cond_6
    :goto_6
    return-object v3
.end method

.method public final getIabConsentString()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/appodeal/ads/x2;->a:Lcom/appodeal/ads/x2;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/appodeal/ads/x2;->e()Lcom/appodeal/ads/regulator/h;

    move-result-object v0

    invoke-interface {v0}, Lcom/appodeal/ads/regulator/h;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getIfa()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/appodeal/ads/x2;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getIp()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/appodeal/ads/j4;->canSendUserSettings()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/appodeal/ads/l5;->a()Lcom/appodeal/ads/l5;

    move-result-object v0

    .line 1
    iget-object v0, v0, Lcom/appodeal/ads/l5;->d:Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getLocation(Landroid/content/Context;)Lcom/appodeal/ads/LocationData;
    .locals 1

    new-instance v0, Lcom/appodeal/ads/z1;

    invoke-direct {v0, p1, p0}, Lcom/appodeal/ads/z1;-><init>(Landroid/content/Context;Lcom/appodeal/ads/RestrictedData;)V

    return-object v0
.end method

.method public final getUSPrivacyString()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/appodeal/ads/x2;->a:Lcom/appodeal/ads/x2;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/appodeal/ads/x2;->e()Lcom/appodeal/ads/regulator/h;

    move-result-object v0

    invoke-interface {v0}, Lcom/appodeal/ads/regulator/h;->getUSPrivacyString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getUserId()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/appodeal/ads/l5;->a()Lcom/appodeal/ads/l5;

    move-result-object v0

    .line 1
    iget-object v0, v0, Lcom/appodeal/ads/l5;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final getZip()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/appodeal/ads/j4;->canSendUserSettings()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/appodeal/ads/l5;->a()Lcom/appodeal/ads/l5;

    move-result-object v0

    .line 1
    iget-object v0, v0, Lcom/appodeal/ads/l5;->k:Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final isLimitAdTrackingEnabled()Z
    .locals 1

    invoke-static {}, Lcom/appodeal/ads/x2;->i()Z

    move-result v0

    return v0
.end method

.method public final isParameterBlocked(Ljava/lang/String;)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/appodeal/ads/x2;->a:Lcom/appodeal/ads/x2;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/appodeal/ads/x2;->e()Lcom/appodeal/ads/regulator/h;

    move-result-object v0

    invoke-interface {v0}, Lcom/appodeal/ads/regulator/h;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/appodeal/ads/x2;->g()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Lcom/appodeal/ads/x2;->e()Lcom/appodeal/ads/regulator/h;

    move-result-object v0

    invoke-interface {v0}, Lcom/appodeal/ads/regulator/h;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-static {}, Lcom/appodeal/ads/x2;->g()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    :goto_0
    invoke-static {p1}, Lcom/appodeal/ads/x2;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public final isUserAgeRestricted()Z
    .locals 1

    invoke-static {}, Lcom/appodeal/ads/i0;->a()Z

    move-result v0

    return v0
.end method

.method public final isUserCcpaProtected()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/appodeal/ads/x2;->a:Lcom/appodeal/ads/x2;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/appodeal/ads/x2;->e()Lcom/appodeal/ads/regulator/h;

    move-result-object v0

    invoke-interface {v0}, Lcom/appodeal/ads/regulator/h;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/appodeal/ads/x2;->g()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isUserGdprProtected()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/appodeal/ads/x2;->a:Lcom/appodeal/ads/x2;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/appodeal/ads/x2;->e()Lcom/appodeal/ads/regulator/h;

    move-result-object v0

    invoke-interface {v0}, Lcom/appodeal/ads/regulator/h;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/appodeal/ads/x2;->g()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isUserHasConsent()Z
    .locals 1

    invoke-static {}, Lcom/appodeal/ads/x2;->g()Z

    move-result v0

    return v0
.end method

.method public final isUserInCcpaScope()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/appodeal/ads/x2;->a:Lcom/appodeal/ads/x2;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/appodeal/ads/x2;->e()Lcom/appodeal/ads/regulator/h;

    move-result-object v0

    invoke-interface {v0}, Lcom/appodeal/ads/regulator/h;->g()Z

    move-result v0

    return v0
.end method

.method public final isUserInGdprScope()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/appodeal/ads/x2;->a:Lcom/appodeal/ads/x2;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/appodeal/ads/x2;->e()Lcom/appodeal/ads/regulator/h;

    move-result-object v0

    invoke-interface {v0}, Lcom/appodeal/ads/regulator/h;->a()Z

    move-result v0

    return v0
.end method

.method public final isUserProtected()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/appodeal/ads/x2;->a:Lcom/appodeal/ads/x2;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/appodeal/ads/x2;->e()Lcom/appodeal/ads/regulator/h;

    move-result-object v0

    invoke-interface {v0}, Lcom/appodeal/ads/regulator/h;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/appodeal/ads/x2;->g()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Lcom/appodeal/ads/x2;->e()Lcom/appodeal/ads/regulator/h;

    move-result-object v0

    invoke-interface {v0}, Lcom/appodeal/ads/regulator/h;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-static {}, Lcom/appodeal/ads/x2;->g()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

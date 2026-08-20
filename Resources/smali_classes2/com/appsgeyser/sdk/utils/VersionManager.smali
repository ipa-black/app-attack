.class public Lcom/appsgeyser/sdk/utils/VersionManager;
.super Ljava/lang/Object;
.source "VersionManager.java"


# static fields
.field private static final APP_VERSION_ALIAS:Ljava/lang/String; = "app_version_prefix"

.field public static final DEFAULT_VERSION:I = -0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCurrentVersion(Landroid/content/Context;)I
    .locals 2

    .line 28
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 29
    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, -0x1

    return p0
.end method

.method public static getPreviousVersion(Landroid/content/Context;)I
    .locals 2

    .line 22
    new-instance v0, Lcom/appsgeyser/sdk/configuration/PreferencesCoder;

    invoke-direct {v0, p0}, Lcom/appsgeyser/sdk/configuration/PreferencesCoder;-><init>(Landroid/content/Context;)V

    const-string p0, "app_version_prefix"

    const/4 v1, -0x1

    .line 23
    invoke-virtual {v0, p0, v1}, Lcom/appsgeyser/sdk/configuration/PreferencesCoder;->getPrefInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static updateVersion(Landroid/content/Context;I)V
    .locals 1

    .line 36
    new-instance v0, Lcom/appsgeyser/sdk/configuration/PreferencesCoder;

    invoke-direct {v0, p0}, Lcom/appsgeyser/sdk/configuration/PreferencesCoder;-><init>(Landroid/content/Context;)V

    .line 37
    const-string p0, "app_version_prefix"

    invoke-virtual {v0, p0, p1}, Lcom/appsgeyser/sdk/configuration/PreferencesCoder;->savePrefInt(Ljava/lang/String;I)V

    return-void
.end method

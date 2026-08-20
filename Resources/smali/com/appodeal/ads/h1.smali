.class public final Lcom/appodeal/ads/h1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Lcom/appodeal/ads/i1;

.field public static b:Lcom/appodeal/ads/i1;

.field public static c:Lcom/appodeal/ads/i1;

.field public static d:Lcom/appodeal/ads/i1;

.field public static e:Lcom/appodeal/ads/i1;

.field public static f:Lcom/appodeal/ads/i1;

.field public static g:Lcom/appodeal/ads/i1;

.field public static h:Lcom/appodeal/ads/i1;

.field public static i:Lcom/appodeal/ads/i1;

.field public static j:Lcom/appodeal/ads/i1;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "setTitleView"

    invoke-static {v0}, Lcom/appodeal/ads/h1;->a(Ljava/lang/String;)Lcom/appodeal/ads/i1;

    move-result-object v0

    sput-object v0, Lcom/appodeal/ads/h1;->a:Lcom/appodeal/ads/i1;

    const-string v0, "setCallToActionView"

    invoke-static {v0}, Lcom/appodeal/ads/h1;->a(Ljava/lang/String;)Lcom/appodeal/ads/i1;

    move-result-object v0

    sput-object v0, Lcom/appodeal/ads/h1;->b:Lcom/appodeal/ads/i1;

    const-string v0, "setRatingView"

    invoke-static {v0}, Lcom/appodeal/ads/h1;->a(Ljava/lang/String;)Lcom/appodeal/ads/i1;

    move-result-object v0

    sput-object v0, Lcom/appodeal/ads/h1;->c:Lcom/appodeal/ads/i1;

    const-string v0, "setDescriptionView"

    invoke-static {v0}, Lcom/appodeal/ads/h1;->a(Ljava/lang/String;)Lcom/appodeal/ads/i1;

    move-result-object v0

    sput-object v0, Lcom/appodeal/ads/h1;->d:Lcom/appodeal/ads/i1;

    const-string v0, "setProviderView"

    invoke-static {v0}, Lcom/appodeal/ads/h1;->a(Ljava/lang/String;)Lcom/appodeal/ads/i1;

    move-result-object v0

    sput-object v0, Lcom/appodeal/ads/h1;->e:Lcom/appodeal/ads/i1;

    const-string v0, "setNativeIconView"

    invoke-static {v0}, Lcom/appodeal/ads/h1;->a(Ljava/lang/String;)Lcom/appodeal/ads/i1;

    move-result-object v0

    sput-object v0, Lcom/appodeal/ads/h1;->f:Lcom/appodeal/ads/i1;

    const-string v0, "setNativeMediaView"

    invoke-static {v0}, Lcom/appodeal/ads/h1;->a(Ljava/lang/String;)Lcom/appodeal/ads/i1;

    move-result-object v0

    sput-object v0, Lcom/appodeal/ads/h1;->g:Lcom/appodeal/ads/i1;

    const-string v0, "registerView"

    invoke-static {v0}, Lcom/appodeal/ads/h1;->a(Ljava/lang/String;)Lcom/appodeal/ads/i1;

    move-result-object v0

    sput-object v0, Lcom/appodeal/ads/h1;->h:Lcom/appodeal/ads/i1;

    const-string v0, "unregisterViewForInteraction"

    invoke-static {v0}, Lcom/appodeal/ads/h1;->a(Ljava/lang/String;)Lcom/appodeal/ads/i1;

    move-result-object v0

    sput-object v0, Lcom/appodeal/ads/h1;->i:Lcom/appodeal/ads/i1;

    const-string v0, "destroy"

    invoke-static {v0}, Lcom/appodeal/ads/h1;->a(Ljava/lang/String;)Lcom/appodeal/ads/i1;

    move-result-object v0

    sput-object v0, Lcom/appodeal/ads/h1;->j:Lcom/appodeal/ads/i1;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/appodeal/ads/i1;
    .locals 2

    new-instance v0, Lcom/appodeal/ads/i1;

    .line 1
    const-string v1, "NativeAdView"

    invoke-direct {v0, v1, p0}, Lcom/appodeal/ads/i1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

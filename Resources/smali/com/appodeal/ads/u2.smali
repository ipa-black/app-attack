.class public final Lcom/appodeal/ads/u2;
.super Lcom/appodeal/ads/j4;
.source "SourceFile"


# instance fields
.field public final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/appodeal/ads/j4;-><init>()V

    iput-object p1, p0, Lcom/appodeal/ads/u2;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final isUserHasConsent()Z
    .locals 2

    iget-object v0, p0, Lcom/appodeal/ads/u2;->c:Ljava/lang/String;

    .line 1
    sget-object v1, Lcom/appodeal/ads/x2;->a:Lcom/appodeal/ads/x2;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/appodeal/ads/x2;->e()Lcom/appodeal/ads/regulator/h;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/appodeal/ads/regulator/h;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

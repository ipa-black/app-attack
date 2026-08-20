.class public final Lcom/appodeal/ads/regulator/data/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/appodeal/consent/Consent;

.field public final b:Z


# direct methods
.method public constructor <init>(Lcom/appodeal/consent/Consent;Z)V
    .locals 1

    const-string v0, "consent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/appodeal/ads/regulator/data/a;->a:Lcom/appodeal/consent/Consent;

    iput-boolean p2, p0, Lcom/appodeal/ads/regulator/data/a;->b:Z

    return-void
.end method


# virtual methods
.method public final a()Lcom/appodeal/consent/Consent;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/regulator/data/a;->a:Lcom/appodeal/consent/Consent;

    return-object v0
.end method

.method public final b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/appodeal/ads/regulator/data/a;->b:Z

    return v0
.end method

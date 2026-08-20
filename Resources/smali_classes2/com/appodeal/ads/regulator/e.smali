.class public final Lcom/appodeal/ads/regulator/e;
.super Lcom/appodeal/consent/ConsentFormListener;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/appodeal/ads/regulator/d;


# direct methods
.method public constructor <init>(Lcom/appodeal/ads/regulator/d;)V
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/regulator/e;->a:Lcom/appodeal/ads/regulator/d;

    invoke-direct {p0}, Lcom/appodeal/consent/ConsentFormListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConsentFormClosed(Lcom/appodeal/consent/Consent;)V
    .locals 2

    const-string v0, "consent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/appodeal/ads/regulator/e;->a:Lcom/appodeal/ads/regulator/d;

    new-instance v1, Lcom/appodeal/ads/regulator/a$a;

    invoke-direct {v1, p1}, Lcom/appodeal/ads/regulator/a$a;-><init>(Lcom/appodeal/consent/Consent;)V

    invoke-static {v0, v1}, Lcom/appodeal/ads/regulator/d;->a(Lcom/appodeal/ads/regulator/d;Lcom/appodeal/ads/regulator/a;)V

    return-void
.end method

.method public final onConsentFormLoaded(Lcom/appodeal/consent/ConsentForm;)V
    .locals 2

    const-string v0, "consentForm"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/appodeal/ads/regulator/e;->a:Lcom/appodeal/ads/regulator/d;

    new-instance v1, Lcom/appodeal/ads/regulator/a$e;

    invoke-direct {v1, p1}, Lcom/appodeal/ads/regulator/a$e;-><init>(Lcom/appodeal/consent/ConsentForm;)V

    invoke-static {v0, v1}, Lcom/appodeal/ads/regulator/d;->a(Lcom/appodeal/ads/regulator/d;Lcom/appodeal/ads/regulator/a;)V

    return-void
.end method

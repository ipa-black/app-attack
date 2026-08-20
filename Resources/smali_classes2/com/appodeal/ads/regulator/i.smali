.class public final Lcom/appodeal/ads/regulator/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/appodeal/ads/regulator/h;


# instance fields
.field public a:Z

.field public b:Z

.field public c:Lcom/appodeal/consent/Consent;

.field public d:Lcom/appodeal/ads/regulator/UserConsent;

.field public e:Ljava/lang/Boolean;

.field public f:Lcom/appodeal/consent/Consent;

.field public g:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/appodeal/consent/Consent;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lcom/appodeal/ads/regulator/i$a;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/appodeal/ads/regulator/i$a;

    iget v1, v0, Lcom/appodeal/ads/regulator/i$a;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/appodeal/ads/regulator/i$a;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/appodeal/ads/regulator/i$a;

    invoke-direct {v0, p0, p3}, Lcom/appodeal/ads/regulator/i$a;-><init>(Lcom/appodeal/ads/regulator/i;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object v6, v0

    iget-object p3, v6, Lcom/appodeal/ads/regulator/i$a;->b:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v1, v6, Lcom/appodeal/ads/regulator/i$a;->d:I

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    if-ne v1, v2, :cond_1

    iget-object p1, v6, Lcom/appodeal/ads/regulator/i$a;->a:Lcom/appodeal/ads/regulator/i;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_3

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 14
    iget-object p3, p0, Lcom/appodeal/ads/regulator/i;->d:Lcom/appodeal/ads/regulator/UserConsent;

    .line 15
    iget-object v1, p0, Lcom/appodeal/ads/regulator/i;->e:Ljava/lang/Boolean;

    if-eqz p3, :cond_3

    .line 16
    invoke-interface {p3}, Lcom/appodeal/ads/regulator/UserConsent;->getStatus()Lcom/appodeal/consent/Consent$Status;

    move-result-object v1

    invoke-interface {p3}, Lcom/appodeal/ads/regulator/UserConsent;->getZone()Lcom/appodeal/consent/Consent$Zone;

    move-result-object p3

    invoke-static {v1, p3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p3

    goto :goto_2

    :cond_3
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_4

    sget-object p3, Lcom/appodeal/consent/Consent$Status;->PERSONALIZED:Lcom/appodeal/consent/Consent$Status;

    goto :goto_1

    :cond_4
    sget-object p3, Lcom/appodeal/consent/Consent$Status;->NON_PERSONALIZED:Lcom/appodeal/consent/Consent$Status;

    :goto_1
    sget-object v1, Lcom/appodeal/consent/Consent$Zone;->UNKNOWN:Lcom/appodeal/consent/Consent$Zone;

    invoke-static {p3, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p3

    goto :goto_2

    :cond_5
    const/4 p3, 0x0

    invoke-static {p3, p3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p3

    :goto_2
    invoke-virtual {p3}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/appodeal/consent/Consent$Status;

    invoke-virtual {p3}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object p3

    move-object v5, p3

    check-cast v5, Lcom/appodeal/consent/Consent$Zone;

    invoke-static {p1}, Lcom/appodeal/ads/regulator/c;->a(Landroid/content/Context;)Lcom/appodeal/ads/regulator/d;

    move-result-object v1

    .line 17
    iget-object v3, p0, Lcom/appodeal/ads/regulator/i;->f:Lcom/appodeal/consent/Consent;

    .line 18
    iput-object p0, v6, Lcom/appodeal/ads/regulator/i$a;->a:Lcom/appodeal/ads/regulator/i;

    iput v2, v6, Lcom/appodeal/ads/regulator/i$a;->d:I

    move-object v2, p2

    invoke-virtual/range {v1 .. v6}, Lcom/appodeal/ads/regulator/d;->a(Ljava/lang/String;Lcom/appodeal/consent/Consent;Lcom/appodeal/consent/Consent$Status;Lcom/appodeal/consent/Consent$Zone;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v0, :cond_6

    return-object v0

    :cond_6
    move-object p1, p0

    :goto_3
    check-cast p3, Lcom/appodeal/consent/Consent;

    if-nez p3, :cond_7

    invoke-static {}, Lcom/appodeal/consent/ConsentManager;->getConsent()Lcom/appodeal/consent/Consent;

    move-result-object p3

    .line 19
    :cond_7
    iput-object p3, p1, Lcom/appodeal/ads/regulator/i;->c:Lcom/appodeal/consent/Consent;

    return-object p3
.end method

.method public final a(Lorg/json/JSONObject;)V
    .locals 2

    const-string v0, "jsonObject"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "gdpr"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/appodeal/ads/regulator/i;->a:Z

    const-string v0, "ccpa"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/appodeal/ads/regulator/i;->b:Z

    const-string v0, "consent"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/appodeal/ads/regulator/i;->g:Z

    return-void
.end method

.method public final a()Z
    .locals 2

    .line 10
    iget-object v0, p0, Lcom/appodeal/ads/regulator/i;->c:Lcom/appodeal/consent/Consent;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {v0}, Lcom/appodeal/consent/Consent;->isGDPRScope()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_3

    .line 12
    iget-object v0, p0, Lcom/appodeal/ads/regulator/i;->f:Lcom/appodeal/consent/Consent;

    if-nez v0, :cond_1

    goto :goto_1

    .line 13
    :cond_1
    invoke-virtual {v0}, Lcom/appodeal/consent/Consent;->isGDPRScope()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    :goto_1
    if-nez v1, :cond_2

    iget-boolean v0, p0, Lcom/appodeal/ads/regulator/i;->a:Z

    goto :goto_2

    :cond_2
    move-object v0, v1

    :cond_3
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_2
    return v0
.end method

.method public final a(Lcom/appodeal/ads/regulator/UserConsent;)Z
    .locals 1

    const-string v0, "publisherZoneConsent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/appodeal/ads/regulator/i;->d:Lcom/appodeal/ads/regulator/UserConsent;

    .line 6
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/appodeal/ads/regulator/i;->d:Lcom/appodeal/ads/regulator/UserConsent;

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final a(Lcom/appodeal/consent/Consent;)Z
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/appodeal/ads/regulator/i;->f:Lcom/appodeal/consent/Consent;

    .line 4
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/appodeal/ads/regulator/i;->f:Lcom/appodeal/consent/Consent;

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final a(Ljava/lang/Boolean;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/appodeal/ads/regulator/i;->e:Ljava/lang/Boolean;

    .line 2
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/appodeal/ads/regulator/i;->e:Ljava/lang/Boolean;

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 1

    .line 7
    iget-boolean v0, p0, Lcom/appodeal/ads/regulator/i;->g:Z

    if-eqz v0, :cond_2

    .line 8
    iget-object v0, p0, Lcom/appodeal/ads/regulator/i;->f:Lcom/appodeal/consent/Consent;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {v0, p1}, Lcom/appodeal/consent/Consent;->hasConsentForVendor(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/appodeal/ads/regulator/i;->e()Z

    move-result p1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    :goto_1
    if-eqz p1, :cond_2

    const/4 p1, 0x1

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    :goto_2
    return p1
.end method

.method public final b()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/appodeal/ads/regulator/i;->c:Lcom/appodeal/consent/Consent;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/appodeal/consent/Consent;->getBooleanStatus()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_3

    .line 3
    iget-object v0, p0, Lcom/appodeal/ads/regulator/i;->f:Lcom/appodeal/consent/Consent;

    if-nez v0, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    invoke-virtual {v0}, Lcom/appodeal/consent/Consent;->getBooleanStatus()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    :goto_1
    if-nez v1, :cond_2

    .line 5
    iget-object v0, p0, Lcom/appodeal/ads/regulator/i;->e:Ljava/lang/Boolean;

    if-nez v0, :cond_3

    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    move-object v0, v1

    .line 6
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_2
    return v0
.end method

.method public final c()Lcom/appodeal/consent/Consent;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/regulator/i;->c:Lcom/appodeal/consent/Consent;

    return-object v0
.end method

.method public final d()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/regulator/i;->e:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final e()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/appodeal/ads/regulator/i;->g:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/appodeal/ads/regulator/i;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final f()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/appodeal/ads/regulator/i;->c:Lcom/appodeal/consent/Consent;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/appodeal/consent/Consent;->getIABConsentString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_2

    .line 3
    iget-object v0, p0, Lcom/appodeal/ads/regulator/i;->f:Lcom/appodeal/consent/Consent;

    if-nez v0, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    invoke-virtual {v0}, Lcom/appodeal/consent/Consent;->getIABConsentString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    move-object v1, v0

    :goto_1
    return-object v1
.end method

.method public final g()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/appodeal/ads/regulator/i;->c:Lcom/appodeal/consent/Consent;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/appodeal/consent/Consent;->isCCPAScope()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_3

    .line 3
    iget-object v0, p0, Lcom/appodeal/ads/regulator/i;->f:Lcom/appodeal/consent/Consent;

    if-nez v0, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    invoke-virtual {v0}, Lcom/appodeal/consent/Consent;->isCCPAScope()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    :goto_1
    if-nez v1, :cond_2

    iget-boolean v0, p0, Lcom/appodeal/ads/regulator/i;->b:Z

    goto :goto_2

    :cond_2
    move-object v0, v1

    :cond_3
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_2
    return v0
.end method

.method public final getUSPrivacyString()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/appodeal/ads/regulator/i;->c:Lcom/appodeal/consent/Consent;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/appodeal/consent/Consent;->getUSPrivacyString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_2

    .line 3
    iget-object v0, p0, Lcom/appodeal/ads/regulator/i;->f:Lcom/appodeal/consent/Consent;

    if-nez v0, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    invoke-virtual {v0}, Lcom/appodeal/consent/Consent;->getUSPrivacyString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    move-object v1, v0

    :goto_1
    return-object v1
.end method

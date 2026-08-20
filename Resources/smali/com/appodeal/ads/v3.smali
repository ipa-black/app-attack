.class public final Lcom/appodeal/ads/v3;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/appodeal/ads/modules/common/internal/ext/JsonObjectBuilder;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/appodeal/ads/networking/binders/b;


# direct methods
.method public constructor <init>(Lcom/appodeal/ads/networking/binders/b;)V
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/v3;->a:Lcom/appodeal/ads/networking/binders/b;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lcom/appodeal/ads/modules/common/internal/ext/JsonObjectBuilder;

    .line 1
    const-string v0, "$this$jsonObject"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/appodeal/ads/v3;->a:Lcom/appodeal/ads/networking/binders/b;

    check-cast v0, Lcom/appodeal/ads/networking/binders/b$n;

    invoke-virtual {v0}, Lcom/appodeal/ads/networking/binders/b$n;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "user_id"

    invoke-virtual {p1, v1, v0}, Lcom/appodeal/ads/modules/common/internal/ext/JsonObjectBuilder;->hasValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/appodeal/ads/v3;->a:Lcom/appodeal/ads/networking/binders/b;

    check-cast v0, Lcom/appodeal/ads/networking/binders/b$n;

    invoke-virtual {v0}, Lcom/appodeal/ads/networking/binders/b$n;->f()Ljava/lang/String;

    move-result-object v0

    const-string v1, "locale"

    invoke-virtual {p1, v1, v0}, Lcom/appodeal/ads/modules/common/internal/ext/JsonObjectBuilder;->hasValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/appodeal/ads/v3;->a:Lcom/appodeal/ads/networking/binders/b;

    check-cast v0, Lcom/appodeal/ads/networking/binders/b$n;

    invoke-virtual {v0}, Lcom/appodeal/ads/networking/binders/b$n;->b()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "consent"

    invoke-virtual {p1, v1, v0}, Lcom/appodeal/ads/modules/common/internal/ext/JsonObjectBuilder;->hasValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/appodeal/ads/v3;->a:Lcom/appodeal/ads/networking/binders/b;

    check-cast v0, Lcom/appodeal/ads/networking/binders/b$n;

    invoke-virtual {v0}, Lcom/appodeal/ads/networking/binders/b$n;->c()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "consent_report"

    invoke-virtual {p1, v1, v0}, Lcom/appodeal/ads/modules/common/internal/ext/JsonObjectBuilder;->hasObject(Ljava/lang/String;Lorg/json/JSONObject;)V

    iget-object v0, p0, Lcom/appodeal/ads/v3;->a:Lcom/appodeal/ads/networking/binders/b;

    check-cast v0, Lcom/appodeal/ads/networking/binders/b$n;

    invoke-virtual {v0}, Lcom/appodeal/ads/networking/binders/b$n;->h()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "token"

    invoke-virtual {p1, v1, v0}, Lcom/appodeal/ads/modules/common/internal/ext/JsonObjectBuilder;->hasObject(Ljava/lang/String;Lorg/json/JSONObject;)V

    iget-object v0, p0, Lcom/appodeal/ads/v3;->a:Lcom/appodeal/ads/networking/binders/b;

    check-cast v0, Lcom/appodeal/ads/networking/binders/b$n;

    invoke-virtual {v0}, Lcom/appodeal/ads/networking/binders/b$n;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "user_agent"

    invoke-virtual {p1, v1, v0}, Lcom/appodeal/ads/modules/common/internal/ext/JsonObjectBuilder;->hasValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/appodeal/ads/v3;->a:Lcom/appodeal/ads/networking/binders/b;

    check-cast v0, Lcom/appodeal/ads/networking/binders/b$n;

    invoke-virtual {v0}, Lcom/appodeal/ads/networking/binders/b$n;->g()Ljava/lang/String;

    move-result-object v0

    const-string v1, "timezone"

    invoke-virtual {p1, v1, v0}, Lcom/appodeal/ads/modules/common/internal/ext/JsonObjectBuilder;->hasValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/appodeal/ads/v3;->a:Lcom/appodeal/ads/networking/binders/b;

    check-cast v0, Lcom/appodeal/ads/networking/binders/b$n;

    invoke-virtual {v0}, Lcom/appodeal/ads/networking/binders/b$n;->e()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "local_time"

    invoke-virtual {p1, v1, v0}, Lcom/appodeal/ads/modules/common/internal/ext/JsonObjectBuilder;->hasValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

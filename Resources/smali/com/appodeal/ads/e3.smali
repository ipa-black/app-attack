.class public final Lcom/appodeal/ads/e3;
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

    iput-object p1, p0, Lcom/appodeal/ads/e3;->a:Lcom/appodeal/ads/networking/binders/b;

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

    iget-object v0, p0, Lcom/appodeal/ads/e3;->a:Lcom/appodeal/ads/networking/binders/b;

    check-cast v0, Lcom/appodeal/ads/networking/binders/b$l;

    invoke-virtual {v0}, Lcom/appodeal/ads/networking/binders/b$l;->e()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "session_id"

    invoke-virtual {p1, v1, v0}, Lcom/appodeal/ads/modules/common/internal/ext/JsonObjectBuilder;->hasValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/appodeal/ads/e3;->a:Lcom/appodeal/ads/networking/binders/b;

    check-cast v0, Lcom/appodeal/ads/networking/binders/b$l;

    invoke-virtual {v0}, Lcom/appodeal/ads/networking/binders/b$l;->j()Ljava/lang/String;

    move-result-object v0

    const-string v1, "session_uuid"

    invoke-virtual {p1, v1, v0}, Lcom/appodeal/ads/modules/common/internal/ext/JsonObjectBuilder;->hasValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/appodeal/ads/e3;->a:Lcom/appodeal/ads/networking/binders/b;

    check-cast v0, Lcom/appodeal/ads/networking/binders/b$l;

    invoke-virtual {v0}, Lcom/appodeal/ads/networking/binders/b$l;->h()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "session_uptime"

    invoke-virtual {p1, v1, v0}, Lcom/appodeal/ads/modules/common/internal/ext/JsonObjectBuilder;->hasValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/appodeal/ads/e3;->a:Lcom/appodeal/ads/networking/binders/b;

    check-cast v0, Lcom/appodeal/ads/networking/binders/b$l;

    invoke-virtual {v0}, Lcom/appodeal/ads/networking/binders/b$l;->i()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "session_uptime_m"

    invoke-virtual {p1, v1, v0}, Lcom/appodeal/ads/modules/common/internal/ext/JsonObjectBuilder;->hasValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/appodeal/ads/e3;->a:Lcom/appodeal/ads/networking/binders/b;

    check-cast v0, Lcom/appodeal/ads/networking/binders/b$l;

    invoke-virtual {v0}, Lcom/appodeal/ads/networking/binders/b$l;->f()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "session_start_ts"

    invoke-virtual {p1, v1, v0}, Lcom/appodeal/ads/modules/common/internal/ext/JsonObjectBuilder;->hasValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/appodeal/ads/e3;->a:Lcom/appodeal/ads/networking/binders/b;

    check-cast v0, Lcom/appodeal/ads/networking/binders/b$l;

    invoke-virtual {v0}, Lcom/appodeal/ads/networking/binders/b$l;->g()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "session_start_ts_m"

    invoke-virtual {p1, v1, v0}, Lcom/appodeal/ads/modules/common/internal/ext/JsonObjectBuilder;->hasValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/appodeal/ads/e3;->a:Lcom/appodeal/ads/networking/binders/b;

    check-cast v0, Lcom/appodeal/ads/networking/binders/b$l;

    invoke-virtual {v0}, Lcom/appodeal/ads/networking/binders/b$l;->c()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "app_uptime"

    invoke-virtual {p1, v1, v0}, Lcom/appodeal/ads/modules/common/internal/ext/JsonObjectBuilder;->hasValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/appodeal/ads/e3;->a:Lcom/appodeal/ads/networking/binders/b;

    check-cast v0, Lcom/appodeal/ads/networking/binders/b$l;

    invoke-virtual {v0}, Lcom/appodeal/ads/networking/binders/b$l;->d()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "app_uptime_m"

    invoke-virtual {p1, v1, v0}, Lcom/appodeal/ads/modules/common/internal/ext/JsonObjectBuilder;->hasValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/appodeal/ads/e3;->a:Lcom/appodeal/ads/networking/binders/b;

    check-cast v0, Lcom/appodeal/ads/networking/binders/b$l;

    invoke-virtual {v0}, Lcom/appodeal/ads/networking/binders/b$l;->a()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "app_session_average_length"

    invoke-virtual {p1, v1, v0}, Lcom/appodeal/ads/modules/common/internal/ext/JsonObjectBuilder;->hasValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/appodeal/ads/e3;->a:Lcom/appodeal/ads/networking/binders/b;

    check-cast v0, Lcom/appodeal/ads/networking/binders/b$l;

    invoke-virtual {v0}, Lcom/appodeal/ads/networking/binders/b$l;->b()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "app_session_average_length_m"

    invoke-virtual {p1, v1, v0}, Lcom/appodeal/ads/modules/common/internal/ext/JsonObjectBuilder;->hasValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.class public final Lcom/appodeal/ads/d3;
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
.field public final synthetic a:Lcom/appodeal/ads/networking/binders/b$a$a;


# direct methods
.method public constructor <init>(Lcom/appodeal/ads/networking/binders/b$a$a;)V
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/d3;->a:Lcom/appodeal/ads/networking/binders/b$a$a;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Lcom/appodeal/ads/modules/common/internal/ext/JsonObjectBuilder;

    .line 1
    const-string v0, "$this$jsonObject"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/appodeal/ads/d3;->a:Lcom/appodeal/ads/networking/binders/b$a$a;

    invoke-interface {v0}, Lcom/appodeal/ads/networking/binders/b$a$a;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "type"

    invoke-virtual {p1, v1, v0}, Lcom/appodeal/ads/modules/common/internal/ext/JsonObjectBuilder;->hasValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/appodeal/ads/d3;->a:Lcom/appodeal/ads/networking/binders/b$a$a;

    instance-of v1, v0, Lcom/appodeal/ads/networking/binders/b$a$a$a;

    const-string v2, "size"

    if-eqz v1, :cond_0

    check-cast v0, Lcom/appodeal/ads/networking/binders/b$a$a$a;

    invoke-virtual {v0}, Lcom/appodeal/ads/networking/binders/b$a$a$a;->a()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "animation"

    invoke-virtual {p1, v1, v0}, Lcom/appodeal/ads/modules/common/internal/ext/JsonObjectBuilder;->hasValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/appodeal/ads/d3;->a:Lcom/appodeal/ads/networking/binders/b$a$a;

    check-cast v0, Lcom/appodeal/ads/networking/binders/b$a$a$a;

    invoke-virtual {v0}, Lcom/appodeal/ads/networking/binders/b$a$a$a;->c()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "smart"

    invoke-virtual {p1, v1, v0}, Lcom/appodeal/ads/modules/common/internal/ext/JsonObjectBuilder;->hasValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/appodeal/ads/d3;->a:Lcom/appodeal/ads/networking/binders/b$a$a;

    check-cast v0, Lcom/appodeal/ads/networking/binders/b$a$a$a;

    invoke-virtual {v0}, Lcom/appodeal/ads/networking/binders/b$a$a$a;->b()I

    move-result v0

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/appodeal/ads/modules/common/internal/ext/JsonObjectBuilder;->hasValue(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    instance-of v0, v0, Lcom/appodeal/ads/networking/binders/b$a$a$c;

    if-eqz v0, :cond_1

    const/16 v0, 0x12c

    goto :goto_0

    .line 2
    :cond_1
    :goto_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

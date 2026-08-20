.class public final Lcom/appodeal/ads/g3;
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

    iput-object p1, p0, Lcom/appodeal/ads/g3;->a:Lcom/appodeal/ads/networking/binders/b;

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

    iget-object v0, p0, Lcom/appodeal/ads/g3;->a:Lcom/appodeal/ads/networking/binders/b;

    check-cast v0, Lcom/appodeal/ads/networking/binders/b$b;

    invoke-virtual {v0}, Lcom/appodeal/ads/networking/binders/b$b;->a()Lcom/appodeal/ads/networking/binders/b$b$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appodeal/ads/networking/binders/b$b$a;->g()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "show"

    invoke-virtual {p1, v1, v0}, Lcom/appodeal/ads/modules/common/internal/ext/JsonObjectBuilder;->hasValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/appodeal/ads/g3;->a:Lcom/appodeal/ads/networking/binders/b;

    check-cast v0, Lcom/appodeal/ads/networking/binders/b$b;

    invoke-virtual {v0}, Lcom/appodeal/ads/networking/binders/b$b;->a()Lcom/appodeal/ads/networking/binders/b$b$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appodeal/ads/networking/binders/b$b$a;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_show"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/appodeal/ads/g3;->a:Lcom/appodeal/ads/networking/binders/b;

    check-cast v1, Lcom/appodeal/ads/networking/binders/b$b;

    invoke-virtual {v1}, Lcom/appodeal/ads/networking/binders/b$b;->a()Lcom/appodeal/ads/networking/binders/b$b$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appodeal/ads/networking/binders/b$b$a;->f()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/appodeal/ads/modules/common/internal/ext/JsonObjectBuilder;->hasValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/appodeal/ads/g3;->a:Lcom/appodeal/ads/networking/binders/b;

    check-cast v0, Lcom/appodeal/ads/networking/binders/b$b;

    invoke-virtual {v0}, Lcom/appodeal/ads/networking/binders/b$b;->a()Lcom/appodeal/ads/networking/binders/b$b$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appodeal/ads/networking/binders/b$b$a;->c()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "click"

    invoke-virtual {p1, v1, v0}, Lcom/appodeal/ads/modules/common/internal/ext/JsonObjectBuilder;->hasValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/appodeal/ads/g3;->a:Lcom/appodeal/ads/networking/binders/b;

    check-cast v0, Lcom/appodeal/ads/networking/binders/b$b;

    invoke-virtual {v0}, Lcom/appodeal/ads/networking/binders/b$b;->a()Lcom/appodeal/ads/networking/binders/b$b$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appodeal/ads/networking/binders/b$b$a;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_click"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/appodeal/ads/g3;->a:Lcom/appodeal/ads/networking/binders/b;

    check-cast v1, Lcom/appodeal/ads/networking/binders/b$b;

    invoke-virtual {v1}, Lcom/appodeal/ads/networking/binders/b$b;->a()Lcom/appodeal/ads/networking/binders/b$b$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appodeal/ads/networking/binders/b$b$a;->b()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/appodeal/ads/modules/common/internal/ext/JsonObjectBuilder;->hasValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/appodeal/ads/g3;->a:Lcom/appodeal/ads/networking/binders/b;

    check-cast v0, Lcom/appodeal/ads/networking/binders/b$b;

    invoke-virtual {v0}, Lcom/appodeal/ads/networking/binders/b$b;->a()Lcom/appodeal/ads/networking/binders/b$b$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appodeal/ads/networking/binders/b$b$a;->e()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "finish"

    invoke-virtual {p1, v1, v0}, Lcom/appodeal/ads/modules/common/internal/ext/JsonObjectBuilder;->hasValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/appodeal/ads/g3;->a:Lcom/appodeal/ads/networking/binders/b;

    check-cast v0, Lcom/appodeal/ads/networking/binders/b$b;

    invoke-virtual {v0}, Lcom/appodeal/ads/networking/binders/b$b;->a()Lcom/appodeal/ads/networking/binders/b$b$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appodeal/ads/networking/binders/b$b$a;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_finish"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/appodeal/ads/g3;->a:Lcom/appodeal/ads/networking/binders/b;

    check-cast v1, Lcom/appodeal/ads/networking/binders/b$b;

    invoke-virtual {v1}, Lcom/appodeal/ads/networking/binders/b$b;->a()Lcom/appodeal/ads/networking/binders/b$b$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appodeal/ads/networking/binders/b$b$a;->d()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/appodeal/ads/modules/common/internal/ext/JsonObjectBuilder;->hasValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

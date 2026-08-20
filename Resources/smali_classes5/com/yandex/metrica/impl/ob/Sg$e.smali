.class final Lcom/yandex/metrica/impl/ob/Sg$e;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/metrica/impl/ob/Sg;->a()Lkotlin/Pair;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "[B",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/metrica/impl/ob/cf;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/cf;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/Sg$e;->a:Lcom/yandex/metrica/impl/ob/cf;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, [B

    .line 2
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Sg$e;->a:Lcom/yandex/metrica/impl/ob/cf;

    iput-object p1, v0, Lcom/yandex/metrica/impl/ob/cf;->g:[B

    .line 3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

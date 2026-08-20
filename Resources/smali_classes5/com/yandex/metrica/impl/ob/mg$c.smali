.class final Lcom/yandex/metrica/impl/ob/mg$c;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/metrica/impl/ob/mg;-><init>(Lcom/yandex/metrica/impl/ob/sg;Lcom/yandex/metrica/impl/ob/wg;Lcom/yandex/metrica/impl/ob/gg;Lcom/yandex/metrica/impl/ob/xg;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/yandex/metrica/impl/ob/og;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/metrica/impl/ob/mg;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/mg;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/mg$c;->a:Lcom/yandex/metrica/impl/ob/mg;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/og;

    invoke-direct {v0, p0}, Lcom/yandex/metrica/impl/ob/og;-><init>(Lcom/yandex/metrica/impl/ob/mg$c;)V

    return-object v0
.end method

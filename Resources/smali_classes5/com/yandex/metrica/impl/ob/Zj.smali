.class public final Lcom/yandex/metrica/impl/ob/Zj;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yandex/metrica/impl/ob/Tj;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/yandex/metrica/impl/ob/uj;

.field private final c:I


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/Yj;Lcom/yandex/metrica/impl/ob/Yj;Lcom/yandex/metrica/impl/ob/Yj;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/metrica/impl/ob/Yj<",
            "Lcom/yandex/metrica/impl/ob/uj;",
            ">;",
            "Lcom/yandex/metrica/impl/ob/Yj<",
            "Ljava/util/List<",
            "Lcom/yandex/metrica/impl/ob/Tj;",
            ">;>;",
            "Lcom/yandex/metrica/impl/ob/Yj<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    check-cast p1, Lcom/yandex/metrica/impl/ob/wj;

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/wj;->b()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/yandex/metrica/impl/ob/uj;

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/Zj;->b:Lcom/yandex/metrica/impl/ob/uj;

    .line 3
    check-cast p2, Lcom/yandex/metrica/impl/ob/Uj;

    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/Uj;->b()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/Zj;->a:Ljava/util/List;

    .line 4
    check-cast p3, Lcom/yandex/metrica/impl/ob/rj;

    invoke-virtual {p3}, Lcom/yandex/metrica/impl/ob/rj;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/yandex/metrica/impl/ob/Zj;->c:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/yandex/metrica/impl/ob/Zj;->c:I

    return v0
.end method

.method public b()Lcom/yandex/metrica/impl/ob/uj;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Zj;->b:Lcom/yandex/metrica/impl/ob/uj;

    return-object v0
.end method

.method public c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/yandex/metrica/impl/ob/Tj;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Zj;->a:Ljava/util/List;

    return-object v0
.end method

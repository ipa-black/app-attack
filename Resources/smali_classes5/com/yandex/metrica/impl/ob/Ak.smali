.class Lcom/yandex/metrica/impl/ob/Ak;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/ik;

.field private final b:Lcom/yandex/metrica/impl/ob/vk;

.field private final c:I


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/yk;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/metrica/impl/ob/yk<",
            "*>;I)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/ik;

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/yk;->b()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/ik;-><init>(Ljava/util/List;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/yandex/metrica/impl/ob/Ak;-><init>(Lcom/yandex/metrica/impl/ob/yk;ILcom/yandex/metrica/impl/ob/ik;)V

    return-void
.end method

.method constructor <init>(Lcom/yandex/metrica/impl/ob/yk;ILcom/yandex/metrica/impl/ob/ik;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/metrica/impl/ob/yk<",
            "*>;I",
            "Lcom/yandex/metrica/impl/ob/ik;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p2, p0, Lcom/yandex/metrica/impl/ob/Ak;->c:I

    .line 4
    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/Ak;->a:Lcom/yandex/metrica/impl/ob/ik;

    .line 5
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/yk;->a()Lcom/yandex/metrica/impl/ob/vk;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/Ak;->b:Lcom/yandex/metrica/impl/ob/vk;

    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/rl$b;
    .locals 4

    if-eqz p1, :cond_2

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Ak;->b:Lcom/yandex/metrica/impl/ob/vk;

    iget v1, p0, Lcom/yandex/metrica/impl/ob/Ak;->c:I

    .line 2
    invoke-virtual {v0, v1, p1}, Lcom/yandex/metrica/impl/ob/vk;->a(ILjava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    iget-object p1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Lcom/yandex/metrica/impl/ob/rl$b;

    return-object p1

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Ak;->a:Lcom/yandex/metrica/impl/ob/ik;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/ik;->a(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/rl$b;

    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Ak;->b:Lcom/yandex/metrica/impl/ob/vk;

    iget v2, p0, Lcom/yandex/metrica/impl/ob/Ak;->c:I

    if-eqz v0, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v1, v2, p1, v3, v0}, Lcom/yandex/metrica/impl/ob/vk;->a(ILjava/lang/String;ZLcom/yandex/metrica/impl/ob/rl$b;)V

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method

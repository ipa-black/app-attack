.class Lcom/yandex/metrica/impl/ob/m2$l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/D1$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/m2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "l"
.end annotation


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/e9;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/e9;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/m2$l;->a:Lcom/yandex/metrica/impl/ob/e9;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/m2$l;->a:Lcom/yandex/metrica/impl/ob/e9;

    .line 2
    new-instance v1, Lcom/yandex/metrica/impl/ob/Qd;

    const/4 v2, 0x0

    .line 3
    invoke-direct {v1, p1, v2}, Lcom/yandex/metrica/impl/ob/Qd;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 4
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/Qd;->f()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    .line 5
    invoke-virtual {v0, v3}, Lcom/yandex/metrica/impl/ob/e9;->d(Z)V

    .line 6
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/Qd;->g()V

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/m2$l;->a:Lcom/yandex/metrica/impl/ob/e9;

    .line 8
    new-instance v1, Lcom/yandex/metrica/impl/ob/Od;

    .line 9
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p1, v3}, Lcom/yandex/metrica/impl/ob/Od;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 10
    invoke-virtual {v1, v3}, Lcom/yandex/metrica/impl/ob/Od;->a(I)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-eqz v5, :cond_1

    .line 12
    invoke-virtual {v0, v3, v4}, Lcom/yandex/metrica/impl/ob/e9;->l(J)Lcom/yandex/metrica/impl/ob/e9;

    .line 14
    :cond_1
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/Od;->f()V

    .line 15
    new-instance v0, Lcom/yandex/metrica/impl/ob/W3;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/W3;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    new-instance v1, Lcom/yandex/metrica/impl/ob/Md;

    .line 17
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/I3;->b()Ljava/lang/String;

    move-result-object v0

    .line 18
    invoke-direct {v1, p1, v0}, Lcom/yandex/metrica/impl/ob/Md;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 19
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/Md;->i()Lcom/yandex/metrica/impl/ob/Md;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/Kd;->b()V

    .line 20
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/m2$l;->a:Lcom/yandex/metrica/impl/ob/e9;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/d9;->d()V

    .line 22
    new-instance v0, Lcom/yandex/metrica/impl/ob/Hd;

    invoke-direct {v0, p1}, Lcom/yandex/metrica/impl/ob/Hd;-><init>(Landroid/content/Context;)V

    .line 23
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/Hd;->a()V

    .line 24
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/Hd;->b()V

    return-void
.end method

.class Lcom/yandex/metrica/impl/ob/K3$e;
.super Lcom/yandex/metrica/impl/ob/K3$j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/K3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "e"
.end annotation


# instance fields
.field private final b:Lcom/yandex/metrica/impl/ob/Jd;

.field private final c:Lcom/yandex/metrica/impl/ob/a9;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/L3;Lcom/yandex/metrica/impl/ob/Jd;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/K3$j;-><init>(Lcom/yandex/metrica/impl/ob/L3;)V

    .line 2
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/K3$e;->b:Lcom/yandex/metrica/impl/ob/Jd;

    .line 3
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/L3;->o()Lcom/yandex/metrica/impl/ob/a9;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/K3$e;->c:Lcom/yandex/metrica/impl/ob/a9;

    return-void
.end method


# virtual methods
.method protected b()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/K3$e;->b:Lcom/yandex/metrica/impl/ob/Jd;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/Jd;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    const-string v2, "DONE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/K3$e;->c:Lcom/yandex/metrica/impl/ob/a9;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/a9;->j()V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/K3$e;->b:Lcom/yandex/metrica/impl/ob/Jd;

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/Jd;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/K3$e;->c:Lcom/yandex/metrica/impl/ob/a9;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/a9;->k()V

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/K3$e;->b:Lcom/yandex/metrica/impl/ob/Jd;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/Jd;->h()V

    .line 12
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/K3$e;->b:Lcom/yandex/metrica/impl/ob/Jd;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/Jd;->g()V

    .line 13
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/K3$e;->b:Lcom/yandex/metrica/impl/ob/Jd;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/Jd;->i()V

    return-void
.end method

.method protected c()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/K3$e;->b:Lcom/yandex/metrica/impl/ob/Jd;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/Jd;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "DONE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/K3$e;->b:Lcom/yandex/metrica/impl/ob/Jd;

    .line 2
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/Jd;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

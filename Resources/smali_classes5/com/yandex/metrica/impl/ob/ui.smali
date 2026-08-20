.class public Lcom/yandex/metrica/impl/ob/ui;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/ob/ui$a;,
        Lcom/yandex/metrica/impl/ob/ui$b;
    }
.end annotation


# instance fields
.field public final a:Lcom/yandex/metrica/impl/ob/ui$a;

.field public final b:Lcom/yandex/metrica/impl/ob/ui$a;


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/ui$a;Lcom/yandex/metrica/impl/ob/ui$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/ui;->a:Lcom/yandex/metrica/impl/ob/ui$a;

    .line 3
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/ui;->b:Lcom/yandex/metrica/impl/ob/ui$a;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ThrottlingConfig{cell="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ui;->a:Lcom/yandex/metrica/impl/ob/ui$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", wifi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ui;->b:Lcom/yandex/metrica/impl/ob/ui$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class public Lcom/yandex/metrica/impl/ob/t6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Output:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field private final a:Ljava/io/File;

.field private final b:Lcom/yandex/metrica/impl/ob/nm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/metrica/impl/ob/nm<",
            "Ljava/io/File;",
            "TOutput;>;"
        }
    .end annotation
.end field

.field private final c:Lcom/yandex/metrica/impl/ob/mm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/metrica/impl/ob/mm<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/yandex/metrica/impl/ob/mm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/metrica/impl/ob/mm<",
            "TOutput;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/io/File;Lcom/yandex/metrica/impl/ob/nm;Lcom/yandex/metrica/impl/ob/mm;Lcom/yandex/metrica/impl/ob/mm;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Lcom/yandex/metrica/impl/ob/nm<",
            "Ljava/io/File;",
            "TOutput;>;",
            "Lcom/yandex/metrica/impl/ob/mm<",
            "Ljava/io/File;",
            ">;",
            "Lcom/yandex/metrica/impl/ob/mm<",
            "TOutput;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/t6;->a:Ljava/io/File;

    .line 3
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/t6;->b:Lcom/yandex/metrica/impl/ob/nm;

    .line 4
    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/t6;->c:Lcom/yandex/metrica/impl/ob/mm;

    .line 5
    iput-object p4, p0, Lcom/yandex/metrica/impl/ob/t6;->d:Lcom/yandex/metrica/impl/ob/mm;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/t6;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/t6;->b:Lcom/yandex/metrica/impl/ob/nm;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/t6;->a:Ljava/io/File;

    invoke-interface {v0, v1}, Lcom/yandex/metrica/impl/ob/nm;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/t6;->d:Lcom/yandex/metrica/impl/ob/mm;

    invoke-interface {v1, v0}, Lcom/yandex/metrica/impl/ob/mm;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    :catchall_0
    :cond_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/t6;->c:Lcom/yandex/metrica/impl/ob/mm;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/t6;->a:Ljava/io/File;

    invoke-interface {v0, v1}, Lcom/yandex/metrica/impl/ob/mm;->b(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

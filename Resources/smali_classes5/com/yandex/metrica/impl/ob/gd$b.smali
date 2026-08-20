.class public Lcom/yandex/metrica/impl/ob/gd$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/gd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:Lcom/yandex/metrica/impl/ob/pi;

.field public final b:Lcom/yandex/metrica/impl/ob/mc;


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/pi;Lcom/yandex/metrica/impl/ob/mc;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/gd$b;->a:Lcom/yandex/metrica/impl/ob/pi;

    .line 3
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/gd$b;->b:Lcom/yandex/metrica/impl/ob/mc;

    return-void
.end method

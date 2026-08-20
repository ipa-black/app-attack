.class public Lcom/yandex/metrica/impl/ob/j9;
.super Lcom/yandex/metrica/impl/ob/q9;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/core/api/ProtobufStateSerializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/google/protobuf/nano/ym/MessageNano;",
        ">",
        "Lcom/yandex/metrica/impl/ob/q9<",
        "TT;>;",
        "Lcom/yandex/metrica/core/api/ProtobufStateSerializer<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/core/api/ProtobufStateSerializer;Lcom/yandex/metrica/impl/ob/wm;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/metrica/core/api/ProtobufStateSerializer<",
            "TT;>;",
            "Lcom/yandex/metrica/impl/ob/wm;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/yandex/metrica/impl/ob/q9;-><init>(Lcom/yandex/metrica/core/api/StateSerializer;Lcom/yandex/metrica/impl/ob/wm;)V

    return-void
.end method

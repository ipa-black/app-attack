.class public final enum Lcom/yandex/metrica/impl/ob/b6$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/b6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yandex/metrica/impl/ob/b6$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/yandex/metrica/impl/ob/b6$b;

.field public static final enum b:Lcom/yandex/metrica/impl/ob/b6$b;

.field public static final enum c:Lcom/yandex/metrica/impl/ob/b6$b;

.field private static final synthetic d:[Lcom/yandex/metrica/impl/ob/b6$b;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/b6$b;

    const-string v1, "EMPTY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/b6$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/b6$b;->a:Lcom/yandex/metrica/impl/ob/b6$b;

    new-instance v1, Lcom/yandex/metrica/impl/ob/b6$b;

    const-string v2, "BACKGROUND"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/yandex/metrica/impl/ob/b6$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/yandex/metrica/impl/ob/b6$b;->b:Lcom/yandex/metrica/impl/ob/b6$b;

    new-instance v2, Lcom/yandex/metrica/impl/ob/b6$b;

    const-string v3, "FOREGROUND"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/yandex/metrica/impl/ob/b6$b;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/yandex/metrica/impl/ob/b6$b;->c:Lcom/yandex/metrica/impl/ob/b6$b;

    .line 2
    filled-new-array {v0, v1, v2}, [Lcom/yandex/metrica/impl/ob/b6$b;

    move-result-object v0

    .line 3
    sput-object v0, Lcom/yandex/metrica/impl/ob/b6$b;->d:[Lcom/yandex/metrica/impl/ob/b6$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/b6$b;
    .locals 1

    .line 1
    const-class v0, Lcom/yandex/metrica/impl/ob/b6$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yandex/metrica/impl/ob/b6$b;

    return-object p0
.end method

.method public static values()[Lcom/yandex/metrica/impl/ob/b6$b;
    .locals 1

    .line 1
    sget-object v0, Lcom/yandex/metrica/impl/ob/b6$b;->d:[Lcom/yandex/metrica/impl/ob/b6$b;

    invoke-virtual {v0}, [Lcom/yandex/metrica/impl/ob/b6$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yandex/metrica/impl/ob/b6$b;

    return-object v0
.end method

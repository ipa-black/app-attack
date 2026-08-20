.class public Ljdbm/helper/IntegerSerializer;
.super Ljava/lang/Object;
.source "IntegerSerializer.java"

# interfaces
.implements Ljdbm/helper/Serializer;


# static fields
.field public static final INSTANCE:Ljdbm/helper/IntegerSerializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 62
    new-instance v0, Ljdbm/helper/IntegerSerializer;

    invoke-direct {v0}, Ljdbm/helper/IntegerSerializer;-><init>()V

    sput-object v0, Ljdbm/helper/IntegerSerializer;->INSTANCE:Ljdbm/helper/IntegerSerializer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize([B)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 97
    invoke-static {p1}, Ljdbm/helper/Conversion;->convertToInt([B)I

    move-result p1

    .line 98
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    return-object v0
.end method

.method public serialize(Ljava/lang/Object;)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 83
    check-cast p1, Ljava/lang/Integer;

    .line 84
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Ljdbm/helper/Conversion;->convertToByteArray(I)[B

    move-result-object p1

    return-object p1
.end method

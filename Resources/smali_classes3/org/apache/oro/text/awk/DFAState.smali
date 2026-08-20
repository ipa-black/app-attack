.class final Lorg/apache/oro/text/awk/DFAState;
.super Ljava/lang/Object;


# instance fields
.field _state:Ljava/util/BitSet;

.field _stateNumber:I


# direct methods
.method constructor <init>(Ljava/util/BitSet;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/oro/text/awk/DFAState;->_state:Ljava/util/BitSet;

    iput p2, p0, Lorg/apache/oro/text/awk/DFAState;->_stateNumber:I

    return-void
.end method

.class Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout$VerticalSlice;
.super Ljava/lang/Object;
.source "ConstraintTableLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VerticalSlice"
.end annotation


# instance fields
.field alignment:I

.field left:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

.field padding:I

.field right:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

.field final synthetic this$0:Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;


# direct methods
.method constructor <init>(Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;)V
    .locals 0

    .line 45
    iput-object p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout$VerticalSlice;->this$0:Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    .line 48
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout$VerticalSlice;->alignment:I

    return-void
.end method

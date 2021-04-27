.class Lcom/facebook/login/widget/ToolTipPopup$2;
.super Ljava/lang/Object;
.source "ToolTipPopup.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/login/widget/ToolTipPopup;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/login/widget/ToolTipPopup;


# direct methods
.method constructor <init>(Lcom/facebook/login/widget/ToolTipPopup;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/login/widget/ToolTipPopup$2;->this$0:Lcom/facebook/login/widget/ToolTipPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Lcom/facebook/login/widget/ToolTipPopup$2;"

    const-string v1, "run"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Lcom/facebook/login/widget/ToolTipPopup$2;->this$0:Lcom/facebook/login/widget/ToolTipPopup;

    invoke-virtual {v5}, Lcom/facebook/login/widget/ToolTipPopup;->dismiss()V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/login/widget/ToolTipPopup$2;"

    const-string v1, "run"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

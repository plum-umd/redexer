.class Landroidx/appcompat/widget/SearchView$AutoCompleteTextViewReflector;
.super Ljava/lang/Object;
.source "SearchView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/SearchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AutoCompleteTextViewReflector"
.end annotation


# instance fields
.field private doAfterTextChanged:Ljava/lang/reflect/Method;

.field private doBeforeTextChanged:Ljava/lang/reflect/Method;

.field private ensureImeVisible:Ljava/lang/reflect/Method;

.field private showSoftInputUnchecked:Ljava/lang/reflect/Method;


# direct methods
.method constructor <init>()V
    .locals 6

    .line 2025
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2027
    :try_start_0
    const-class v2, Landroid/widget/AutoCompleteTextView;

    const-string v3, "doBeforeTextChanged"

    new-array v4, v0, [Ljava/lang/Class;

    .line 2028
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Landroidx/appcompat/widget/SearchView$AutoCompleteTextViewReflector;->doBeforeTextChanged:Ljava/lang/reflect/Method;

    .line 2029
    iget-object v2, p0, Landroidx/appcompat/widget/SearchView$AutoCompleteTextViewReflector;->doBeforeTextChanged:Ljava/lang/reflect/Method;

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2034
    :catch_0
    :try_start_1
    const-class v2, Landroid/widget/AutoCompleteTextView;

    const-string v3, "doAfterTextChanged"

    new-array v4, v0, [Ljava/lang/Class;

    .line 2035
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Landroidx/appcompat/widget/SearchView$AutoCompleteTextViewReflector;->doAfterTextChanged:Ljava/lang/reflect/Method;

    .line 2036
    iget-object v2, p0, Landroidx/appcompat/widget/SearchView$AutoCompleteTextViewReflector;->doAfterTextChanged:Ljava/lang/reflect/Method;

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2041
    :catch_1
    :try_start_2
    const-class v2, Landroid/widget/AutoCompleteTextView;

    const-string v3, "ensureImeVisible"

    new-array v4, v1, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v0

    .line 2042
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/widget/SearchView$AutoCompleteTextViewReflector;->ensureImeVisible:Ljava/lang/reflect/Method;

    .line 2043
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView$AutoCompleteTextViewReflector;->ensureImeVisible:Ljava/lang/reflect/Method;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method


# virtual methods
.method doAfterTextChanged(Landroid/widget/AutoCompleteTextView;)V
    .locals 7

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Landroidx/appcompat/widget/SearchView$AutoCompleteTextViewReflector;"

    const-string v1, "doAfterTextChanged"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Landroidx/appcompat/widget/SearchView$AutoCompleteTextViewReflector;->doAfterTextChanged:Ljava/lang/reflect/Method;

    if-eqz v5, :cond_0

    const/4 v6, 0x0

    :try_start_0
    new-array v6, v6, [Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const/4 v1, 0x6

    aput-object v6, v2, v1

    const-string v0, "Ljava/lang/reflect/Method;"

    const-string v1, "invoke"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_1
    invoke-virtual {v5, p1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/lang/reflect/Method;"

    const-string v1, "invoke"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :catch_0
    :cond_0
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/appcompat/widget/SearchView$AutoCompleteTextViewReflector;"

    const-string v1, "doAfterTextChanged"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method doBeforeTextChanged(Landroid/widget/AutoCompleteTextView;)V
    .locals 7

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Landroidx/appcompat/widget/SearchView$AutoCompleteTextViewReflector;"

    const-string v1, "doBeforeTextChanged"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Landroidx/appcompat/widget/SearchView$AutoCompleteTextViewReflector;->doBeforeTextChanged:Ljava/lang/reflect/Method;

    if-eqz v5, :cond_0

    const/4 v6, 0x0

    :try_start_0
    new-array v6, v6, [Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const/4 v1, 0x6

    aput-object v6, v2, v1

    const-string v0, "Ljava/lang/reflect/Method;"

    const-string v1, "invoke"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_1
    invoke-virtual {v5, p1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/lang/reflect/Method;"

    const-string v1, "invoke"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :catch_0
    :cond_0
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/appcompat/widget/SearchView$AutoCompleteTextViewReflector;"

    const-string v1, "doBeforeTextChanged"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method ensureImeVisible(Landroid/widget/AutoCompleteTextView;Z)V
    .locals 8

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const/4 v1, 0x6

    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroidx/appcompat/widget/SearchView$AutoCompleteTextViewReflector;"

    const-string v1, "ensureImeVisible"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Landroidx/appcompat/widget/SearchView$AutoCompleteTextViewReflector;->ensureImeVisible:Ljava/lang/reflect/Method;

    if-eqz v5, :cond_0

    const/4 v6, 0x1

    :try_start_0
    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    aput-object p2, v6, v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const/4 v1, 0x6

    aput-object v6, v2, v1

    const-string v0, "Ljava/lang/reflect/Method;"

    const-string v1, "invoke"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_1
    invoke-virtual {v5, p1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/lang/reflect/Method;"

    const-string v1, "invoke"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :catch_0
    :cond_0
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/appcompat/widget/SearchView$AutoCompleteTextViewReflector;"

    const-string v1, "ensureImeVisible"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

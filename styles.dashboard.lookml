- dashboard: styles
  title: " styles"
  layout: newspaper
  preferred_viewer: dashboards-next
  elements:
  - name: "<h2>Looker</h2>"
    type: text
    title_text: "<h2>Looker</h2>"
    subtitle_text: ''
    body_text: |-
      <h3>- Looker is a cloud-based business intelligence (BI) platform designed to explore and analyze data. <br>
      - The solution helps businesses to capture and analyze data from multiple sources and make data-driven decisions.</h3>
    row: 0
    col: 6
    width: 18
    height: 5
  - title: Logo
    name: Logo
    model: trial
    explore: applicable_roles
    type: single_value
    fields: [applicable_roles.cym_Logo]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    defaults_version: 1
    row: 0
    col: 0
    width: 6
    height: 5
  - title: "# Grantees"
    name: "# Grantees"
    model: trial
    explore: applicable_roles
    type: looker_pie
    fields: [applicable_roles.count, applicable_roles.grantee]
    sorts: [applicable_roles.count desc]
    limit: 500
    value_labels: labels
    label_type: labPer
    inner_radius: 50
    color_application:
      collection_id: 80e60a97-c02b-4a41-aa05-83522ee2144b
      palette_id: 629b455f-662e-4854-a424-4f0c9d4bbdfb
      options:
        steps: 5
    series_colors:
      PEB: "#3b6dc2"
      ACCOUNTADMIN: "#20abd9"
      SECURITYADMIN: "#4d5488"
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    listen: {}
    row: 5
    col: 0
    width: 12
    height: 6
  - title: Role Details
    name: Role Details
    model: trial
    explore: applicable_roles
    type: looker_grid
    fields: [applicable_roles.grantee, applicable_roles.count, applicable_roles.role_name]
    sorts: [applicable_roles.count desc]
    limit: 500
    bg_color: "red"
    column_limit: 50
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: unstyled
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: false
    show_row_totals: false
    series_cell_visualizations:
      applicable_roles.count:
        is_active: false
    series_text_format:
      applicable_roles.role_name:
        bg_color: "#2f323a"
        fg_color: white
      applicable_roles.count:
        bg_color: "#2f323a"
        fg_color: white
      applicable_roles.grantee:
        bg_color: "#2f323a"
        fg_color: white
    header_font_color: white
    header_background_color: red
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    listen: {}
    row: 19
    col: 0
    width: 24
    height: 3
  - title: Scores By Role
    name: Scores By Role
    model: trial
    explore: columns
    type: looker_area
    fields: [columns.data_type, columns.count, columns.Score, columns.numeric_precision]
    sorts: [columns.data_type]
    limit: 5
    dynamic_fields: [{table_calculation: roles, label: Roles, expression: "if(row()=1,\"\
          Sales\",\n  if(row()=2,\"Finance\",\n    if(row()=3,\"Analyst\",\n     \
          \ if(row()=4,\"Marketing\",\"Others\"))))", value_format: !!null '', value_format_name: !!null '',
        _kind_hint: dimension, _type_hint: string}, {table_calculation: score_1, label: Score
          1, expression: "if(row()=1,\"50\",\n  if(row()=2,\"20\",\n    if(row()=3,\"\
          13\",\n      if(row()=4,\"40\",\"22\"))))", value_format: !!null '', value_format_name: !!null '',
        _kind_hint: dimension, _type_hint: string}, {table_calculation: score_2, label: Score
          2, expression: "if(row()=1,\"12\",\n  if(row()=2,\"34\",\n    if(row()=3,\"\
          20\",\n      if(row()=4,\"60\",\"30\"))))", value_format: !!null '', value_format_name: !!null '',
        _kind_hint: dimension, _type_hint: string}]
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: columns.count, id: columns.count,
            name: Columns}], showLabels: false, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    series_types: {}
    series_colors:
      columns.Score: "#9c84fb"
    series_labels:
      columns.count: Score 1
      columns.Score: Score 2
    ordering: none
    show_null_labels: false
    defaults_version: 1
    hidden_fields: [columns.data_type, score_2, score_1, columns.numeric_precision]
    row: 11
    col: 0
    width: 24
    height: 8
  - title: Account Balance Details
    name: Account Balance Details
    model: trial
    explore: cust
    type: looker_column
    fields: [cust.c_name, cust.c_acctbal, account_bal]
    sorts: [cust.c_name desc]
    limit: 5
    dynamic_fields: [{measure: account_bal, based_on: cust.c_acctbal, type: average,
        label: Account Bal, expression: !!null '', value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, _type_hint: number}, {table_calculation: client, label: Client,
        expression: "if(row()=1,\"Client A\",\n  if(row()=2,\"Client B\",\n    if(row()=3,\"\
          Client C\",\n      if(row()=4,\"Client D\",\"Client E\"))))", value_format: !!null '',
        value_format_name: !!null '', _kind_hint: dimension, _type_hint: string}]
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      palette_id: ccba75a3-58c7-4b9c-a931-4ffc59e79cba
      options:
        steps: 5
    series_types: {}
    series_colors:
      account_bal: "#4d5488"
    series_labels:
      account_bal: Account Balance
    label_color: [white]
    leftAxisLabelVisible: false
    leftAxisLabel: ''
    rightAxisLabelVisible: false
    rightAxisLabel: ''
    smoothedBars: false
    orientation: automatic
    labelPosition: left
    percentType: total
    percentPosition: inline
    valuePosition: right
    labelColorEnabled: false
    labelColor: "#FFF"
    defaults_version: 1
    hidden_fields: [cust.c_acctbal, cust.c_name]
    listen: {}
    row: 5
    col: 12
    width: 12
    height: 6

    embed_style:
    background_color: "red"
